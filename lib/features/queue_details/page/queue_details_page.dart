import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/widget/task_expenses.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/features/queue_details/widgets/editable/editable.dart';
import 'package:inno_queue/features/queue_details/widgets/editable/participants_list.dart';
import 'package:inno_queue/features/queue_details/widgets/editable/track_expenses_button.dart';
import 'package:inno_queue/features/queue_details/widgets/static/static.dart';

class QueueDetailsPage extends StatefulWidget {
  const QueueDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QueueDetailsPage> createState() => _QueueDetailsPageState();
}

class _QueueDetailsPageState extends State<QueueDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) {
        return state.when(
          queueLeft: () {
            context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
            context.router.pop();
            return Wrap();
          },
          queueFreezed: () {
            context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
            context.router.pop();
            return Wrap();
          },
          initial: () => Wrap(),
          queueOpened: (queue, editable) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: editable
                            ? EditableHeader(
                                queueModel: queue,
                              )
                            : Header(queueModel: queue),
                      ),
                      if (!editable)
                        const SizedBox(
                          height: 20,
                        ),
                      if (!editable)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: queueDetailsPadding),
                          child: ElevatedButton(
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'Add Progress',
                                style: Theme.of(context)
                                    .textTheme
                                    .largeButtonTextSrtyle,
                              ),
                            ),
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext _) {
                                  return TaskExpensesDialog(
                                    buildContext: context,
                                    queueModel: queue,
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      const SizedBox(
                        height: 20,
                      ),
                      editable
                          ? EditableParticipants(
                              queueModel: queue,
                            )
                          : Participants(
                              queueModel: queue,
                            ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (editable)
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TrackExpensesButton(),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
