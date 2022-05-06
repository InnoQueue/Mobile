import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UpdatablePage extends StatefulWidget {
  final Widget child;
  final bool enablePullDown;
  final Function onRefresh;
  final bool refreshDone;
  final dynamic bloc;
  const UpdatablePage({
    Key? key,
    required this.child,
    required this.enablePullDown,
    required this.onRefresh,
    required this.refreshDone,
    required this.bloc,
  }) : super(key: key);

  @override
  State<UpdatablePage> createState() => _UpdatablePageState();
}

class _UpdatablePageState extends State<UpdatablePage> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    widget.onRefresh();
    await Future.delayed(const Duration(seconds: 1), () {});
    await waitWhile(() {
      return widget.bloc.loading;
    });
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
        header: ClassicHeader(
          idleText: AppLocalizations.of(context)!.translate('pull down') ?? "",
          releaseText: AppLocalizations.of(context)!.translate('release') ?? "",
          refreshingText:
              AppLocalizations.of(context)!.translate('refreshing') ?? "",
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
