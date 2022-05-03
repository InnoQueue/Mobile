import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UpdatablePage extends StatefulWidget {
  final Widget child;
  final bool enablePullDown;
  final Function onRefresh;
  final bool refreshDone;
  const UpdatablePage({
    Key? key,
    required this.child,
    required this.enablePullDown,
    required this.onRefresh,
    required this.refreshDone,
  }) : super(key: key);

  @override
  State<UpdatablePage> createState() => _UpdatablePageState();
}

class _UpdatablePageState extends State<UpdatablePage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    widget.onRefresh();
    await waitWhile(() => !widget.refreshDone);
    await Future.delayed(const Duration(seconds: 1), () {});
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SmartRefresher(
        enablePullDown: widget.enablePullDown,
        controller: _refreshController,
        onRefresh: _onRefresh,
        header: const ClassicHeader(
          refreshStyle: RefreshStyle.UnFollow,
          completeDuration: Duration.zero,
          completeText: '',
          completeIcon: null,
        ),
        child: widget.child,
      ),
    );
  }

  Future waitWhile(bool Function() test,
      [Duration pollInterval = Duration.zero]) {
    var completer = Completer();
    check() {
      if (!test()) {
        completer.complete();
      } else {
        Timer(pollInterval, check);
      }
    }

    check();
    return completer.future;
  }
}
