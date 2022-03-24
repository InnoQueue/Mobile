import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/queues/bloc/queues_bloc.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';

class QueueBottomSheet extends StatefulWidget {
  final List<Widget>? children;

  const QueueBottomSheet({
    Key? key,
    this.children,
  }) : super(key: key);

  @override
  State<QueueBottomSheet> createState() => _QueueBottomSheetState();
}

class _QueueBottomSheetState extends State<QueueBottomSheet> {
  bool _toggleValue = false;
  final nameFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<QueuesBloc>(),
      child: AppBottomSheet(
        content: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Create new queue',
                style: bottomSheetTitleStyle,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  AppTextField(controller: nameFieldController),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        'Track expenses',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      FlutterSwitch(
                        value: _toggleValue,
                        onToggle: (newValue) {
                          setState(() {
                            _toggleValue = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              child: Container(
                height: 55,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              onPressed: _onPressed,
            ),
            ...(widget.children ?? []),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    getIt.get<QueuesBloc>().add(
          QueuesEvent.addQueue(
            name: nameFieldController.text,
            color: "RED",
            trackExpenses: _toggleValue,
          ),
        );
    Navigator.pop(context);
  }
}
