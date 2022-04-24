import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/shared/shared.dart';

class QueueDetailsPage extends StatefulWidget {
  const QueueDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QueueDetailsPage> createState() => _QueueDetailsPageState();
}

class _QueueDetailsPageState extends State<QueueDetailsPage> {
  QueueDetailsModel? updatedQueueDetails;
  late QueueDetailsModel originalQueueDetails;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditQueueBloc, EditQueueState>(
        builder: (context, state) {
      state.when(
        initial: () {},
        updateRequested: () {
          submitChanges();
          context.read<AppBarBloc>().add(RouteChangedEvent(
              (updatedQueueDetails ?? originalQueueDetails).name));
        },
        cancelRequested: () {
          cancelChanges();
          updatedQueueDetails = null;
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
            initial: () => const Center(
              child: CustomCircularProgressIndicator(),
            ),
            queueUpdating: () => const Center(
              child: CustomCircularProgressIndicator(),
            ),
            queueOpened: (queueDetails, editable) {
              originalQueueDetails = queueDetails;
              context
                  .read<AppBarBloc>()
                  .add(RouteChangedEvent(originalQueueDetails.name));
              return WillPopScope(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: !(queueDetails.participants.isEmpty && !editable)
                        ? SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: editable
                                      ? EditableHeader(
                                          queueDetailsModel:
                                              updatedQueueDetails ??
                                                  queueDetails,
                                          updateColor: updateColor,
                                          updateName: updateName,
                                        )
                                      : Header(queueDetailsModel: queueDetails),
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
                                      queueDetialsModel: queueDetails,
                                    ),
                                  ),
                                const SizedBox(
                                  height: 20,
                                ),
                                editable
                                    ? EditableParticipants(
                                        queueDetailsModel:
                                            updatedQueueDetails ?? queueDetails,
                                        removeParticipant: removeParticipant,
                                      )
                                    : Participants(
                                        queueDetailsModel: queueDetails,
                                      ),
                                const SizedBox(
                                  height: 20,
                                ),
                                if (editable)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: TrackExpensesButton(
                                      initValue:
                                          (updatedQueueDetails ?? queueDetails)
                                              .trackExpenses,
                                      updateTracker: updateTracker,
                                    ),
                                  ),
                              ],
                            ),
                          )
                        : Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Header(queueDetailsModel: queueDetails),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: queueDetailsPadding),
                                child: _AddProgressButton(
                                  queueDetialsModel: queueDetails,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ParticipantTile(
                                user: queueDetails.crrentUser,
                                queueDetailsModel: queueDetails,
                              ),
                              Expanded(
                                child: NoItemsWidget(
                                  imagePath: 'images/crying.gif',
                                  message: AppLocalizations.of(context)!
                                          .translate('no queue participants') ??
                                      '',
                                ),
                              )
                            ],
                          ),
                  ),
                ),
                onWillPop: () =>
                    _onWillPop(editable, updatedQueueDetails != null),
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
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('Do you want to cancel changes'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    cancelChanges();
                    updatedQueueDetails = originalQueueDetails;
                    Navigator.of(context).pop(false);
                  },
                  child: const Text(
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
      updatedQueueDetails = null;
    } else {
      Navigator.of(context).pop();
      context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
    }
    return false;
  }

  void updateName(String name) {
    setState(() {
      updatedQueueDetails =
          (updatedQueueDetails ?? originalQueueDetails).copyWith(name: name);
    });
  }

  void updateColor(String color) {
    setState(() {
      updatedQueueDetails =
          (updatedQueueDetails ?? originalQueueDetails).copyWith(
        color: color,
      );
    });
  }

  void removeParticipant(UserModel user) {
    setState(() {
      updatedQueueDetails =
          (updatedQueueDetails ?? originalQueueDetails).copyWith(
        participants: [
          ...(updatedQueueDetails ?? originalQueueDetails).participants
        ]..remove(user),
      );
    });
  }

  // void addParticipant(UserModel user) {
  //   updatedQueue = (updatedQueue ?? originalQueue).copyWith(
  //       participants: [...(updatedQueue ?? originalQueue).participants, user]);
  // }

  void updateTracker(bool value) {
    setState(() {
      updatedQueueDetails =
          (updatedQueueDetails ?? originalQueueDetails).copyWith(
        trackExpenses: value,
      );
    });
  }

  void submitChanges() {
    context.read<QueueDetailsBloc>().add(QueueDetailsEvent.submitEdits(
        (updatedQueueDetails ?? originalQueueDetails)));
    context.read<EditQueueBloc>().add(const EditQueueEvent.reset());
  }

  void cancelChanges() {
    context.read<QueueDetailsBloc>().add(const QueueDetailsEvent.cancelEdits());
    context.read<EditQueueBloc>().add(const EditQueueEvent.reset());
  }
}

class _AddProgressButton extends StatelessWidget {
  final QueueDetailsModel queueDetialsModel;
  const _AddProgressButton({
    required this.queueDetialsModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Container(
        height: 40,
        alignment: Alignment.center,
        child: Text(
          AppLocalizations.of(context)!.translate('add progress') ??
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
              queueDetialsModel: queueDetialsModel,
            );
          },
        );
      },
    );
  }
}
