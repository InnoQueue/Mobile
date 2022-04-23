import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import '../bloc/queues_bloc.dart';
import '../widgets/widgets.dart';

class QueuesPage extends StatefulWidget {
  const QueuesPage({Key? key}) : super(key: key);

  @override
  State<QueuesPage> createState() => _QueuesPageState();
}

class _QueuesPageState extends State<QueuesPage> {
  int? _groupValue = 0;
  Map<int, Widget>? _tabs;

  @override
  void initState() {
    super.initState();
    context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
  }

  @override
  Widget build(BuildContext context) {
    _tabs ??= {
      0: Text(
        AppLocalizations.of(context)!.translate('active') ?? 'Active',
      ),
      1: Text(
        AppLocalizations.of(context)!.translate('frozen') ?? 'Frozen',
      ),
    };
    return BlocBuilder<QueuesBloc, QueuesState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
          },
          dataLoaded: (active, frozen) {
            return SafeArea(
                child: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoSlidingSegmentedControl<int>(
                      groupValue: _groupValue,
                      children: _tabs ?? {},
                      onValueChanged: (value) {
                        setState(() {
                          _groupValue = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: _groupValue == 0
                        ? Scrollbar(
                            child: QueueList(
                            queues: active,
                            active: true,
                          ))
                        : _groupValue == 1
                            ? Scrollbar(
                                child: QueueList(
                                queues: frozen,
                                frozen: true,
                              ))
                            : Wrap(),
                  )
                ],
              ),
            ));
          },
        );
      },
    );
  }
}
