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
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';
import 'package:inno_queue/shared/bloc/edit_queue_bloc/edit_queue_bloc.dart';
import 'package:inno_queue/shared/models/user/user_model.dart';

class QueueDetailsPage extends StatefulWidget {
  const QueueDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QueueDetailsPage> createState() => _QueueDetailsPageState();
}

class _QueueDetailsPageState extends State<QueueDetailsPage> {
  QueueModel? updatedQueue;
  late QueueModel originalQueue;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditQueueBloc, EditQueueState>(
        builder: (context, state) {
      state.when(
        initial: () {},
        updateRequested: () {
          submitChanges();
          context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
          context
              .read<AppBarBloc>()
              .add(RouteChangedEvent((updatedQueue ?? originalQueue).name));
        },
        cancelRequested: () {
          cancelChanges();
          updatedQueue = originalQueue;
        },
      );
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
              originalQueue = queue;
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
                                  queueModel: updatedQueue ?? queue,
                                  updateColor: updateColor,
                                  updateName: updateName,
                                )
                              : Header(queueModel: updatedQueue ?? queue),
                        ),
                        if (!editable)
                          const SizedBox(
                            height: 20,
                          ),
                        if (!editable)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: queueDetailsPadding),
                            child: _AddProgressButton(
                              queue: updatedQueue ?? queue,
                            ),
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        editable
                            ? EditableParticipants(
                                queueModel: updatedQueue ?? queue,
                                removeParticipant: removeParticipant,
                              )
                            : Participants(
                                queueModel: updatedQueue ?? queue,
                              ),
                        const SizedBox(
                          height: 20,
                        ),
                        if (editable)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TrackExpensesButton(
                              initValue: queue.trackExpenses,
                              updateTracker: updateTracker,
                            ),
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
    });
  }

  void updateName(String name) {
    setState(() {
      updatedQueue = (updatedQueue ?? originalQueue).copyWith(name: name);
    });
  }

  void updateColor(String color) {
    setState(() {
      updatedQueue = (updatedQueue ?? originalQueue).copyWith(
        color: color,
      );
    });
  }

  void removeParticipant(UserModel user) {
    setState(() {
      updatedQueue = (updatedQueue ?? originalQueue).copyWith(
        participants: [...(updatedQueue ?? originalQueue).participants]
          ..remove(user),
      );
    });
  }

  // void addParticipant(UserModel user) {
  //   updatedQueue = (updatedQueue ?? originalQueue).copyWith(
  //       participants: [...(updatedQueue ?? originalQueue).participants, user]);
  // }

  void updateTracker(bool value) {
    setState(() {
      updatedQueue = (updatedQueue ?? originalQueue).copyWith(
        trackExpenses: value,
      );
    });
  }

  void submitChanges() {
    context
        .read<QueueDetailsBloc>()
        .add(QueueDetailsEvent.submitEdits((updatedQueue ?? originalQueue)));
    context.read<EditQueueBloc>().add(const EditQueueEvent.reset());
  }

  void cancelChanges() {
    context.read<QueueDetailsBloc>().add(const QueueDetailsEvent.cancelEdits());
    context.read<EditQueueBloc>().add(const EditQueueEvent.reset());
  }
}

class _AddProgressButton extends StatelessWidget {
  final QueueModel queue;
  const _AddProgressButton({
    required this.queue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          'Add Progress',
          style: Theme.of(context).textTheme.largeButtonTextSrtyle,
        ),
      ),
      onPressed: () {
        showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext _) {
            return TaskExpensesDialog(
              buildContext: context,
              queueModel: queue,
            );
          },
        );
      },
    );
  }
}
