import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/features/queues/bloc/queues_bloc.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import '../widgets/widgets.dart';

class QueuesPage extends StatefulWidget {
  const QueuesPage({Key? key}) : super(key: key);

  @override
  State<QueuesPage> createState() => _QueuesPageState();
}

class _QueuesPageState extends State<QueuesPage> {
  int? _groupValue = 0;
  final Map<int, Widget> _tabs = {
    0: const Text('Active'),
    1: const Text('Frozen'),
  };

  @override
  void initState() {
    super.initState();
    context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueuesBloc, QueuesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
              child: CircularProgressIndicator(color: Colors.grey)),
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
                      children: _tabs,
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
                        ? QueueList(queues: active)
                        : _groupValue == 1
                            ? QueueList(queues: frozen)
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
