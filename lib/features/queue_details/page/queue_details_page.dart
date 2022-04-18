import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/shared/shared.dart';

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
          context
              .read<AppBarBloc>()
              .add(RouteChangedEvent((updatedQueue ?? originalQueue).name));
        },
        cancelRequested: () {
          cancelChanges();
          updatedQueue = null;
        },
      );
      return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
        builder: (context, state) {
          return state.when(
            queueLeft: () {
              context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
              Future.delayed(Duration.zero, () async {
                context.router.pop();
              });
              return Wrap();
            },
            queueFreezed: () {
              context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
              Future.delayed(Duration.zero, () async {
                context.router.pop();
              });
              return Wrap();
            },
            queueUnfreezed: () {
              context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
              Future.delayed(Duration.zero, () async {
                context.router.pop();
              });
              return Wrap();
            },
            initial: () => Wrap(),
            queueUpdating: () {
              return const Center(
                child: CustomCircularProgressIndicator(),
              );
            },
            queueOpened: (queue, editable) {
              originalQueue = queue;
              return WillPopScope(
                child: SafeArea(
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
                              child: _AddProgressButton(
                                queue: queue,
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
                                  queueModel: queue,
                                ),
                          const SizedBox(
                            height: 20,
                          ),
                          if (editable)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: TrackExpensesButton(
                                initValue:
                                    (updatedQueue ?? queue).trackExpenses,
                                updateTracker: updateTracker,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                onWillPop: () => _onWillPop(editable, updatedQueue != null),
              );
            },
          );
        },
      );
    });
  }

  Future<bool> _onWillPop(bool editable, bool changesApplied) async {
    if (editable && changesApplied) {
      return (await showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: new Text('Are you sure?'),
              content: new Text('Do you want to cancel changes'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: new Text(
                    'No',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    cancelChanges();
                    updatedQueue = originalQueue;
                    Navigator.of(context).pop(false);
                  },
                  child: new Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )) ??
          false;
    } else if (editable && !changesApplied) {
      cancelChanges();
      updatedQueue = null;
    } else {
      Navigator.of(context).pop();
      context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
    }
    return false;
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
