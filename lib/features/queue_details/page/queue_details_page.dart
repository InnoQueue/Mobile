import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/core/widget/updatable_page.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/shared/shared.dart';

part 'body.dart';
part 'add_progress_button.dart';

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
    return Container(
      // ignore: deprecated_member_use
      color: Theme.of(context).primaryColorBrightness == Brightness.dark
          ? Colors.grey[900]
          : Colors.blueGrey[50],
      child:
          BlocBuilder<EditQueueBloc, EditQueueState>(builder: (context, state) {
        state.when(
          initial: () {},
          updateRequested: () {
            submitChanges();
          },
          cancelRequested: () {
            cancelChanges();
            updatedQueueDetails = null;
          },
        );
        return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
          builder: (context, state) {
            return SafeArea(
              minimum: const EdgeInsets.only(bottom: 10),
              child: UpdatablePage(
                onRefresh: () {
                  context.read<QueueDetailsBloc>().add(
                        const QueueDetailsEvent.updateQueue(),
                      );
                },
                bloc: context.read<QueueDetailsBloc>(),
                enablePullDown: state.maybeWhen(
                  queueOpened: (_, _editable) => !_editable,
                  orElse: () => false,
                ),
                refreshDone: !context.read<QueueDetailsBloc>().loading,
                child: SafeArea(
                  minimum: const EdgeInsets.only(top: 20),
                  child: state.when(
                    queueLeft: () => leaveAndLoad(context),
                    queueFreezed: () => leaveAndLoad(context),
                    queueUnfreezed: () => leaveAndLoad(context),
                    initial: () => const Center(
                      child: CustomCircularProgressIndicator(),
                    ),
                    queueOpened: (queueDetails, editable) {
                      originalQueueDetails = queueDetails;
                      context
                          .read<AppBarBloc>()
                          .add(RouteChangedEvent(originalQueueDetails.name));
                      return WillPopScope(
                        child: GestureDetector(
                          child: Container(
                            // ignore: deprecated_member_use
                            color: Theme.of(context).primaryColorBrightness ==
                                    Brightness.dark
                                ? Colors.grey[900]
                                : Colors.blueGrey[50],
                            child: _Body(
                              originalQueueDetails: queueDetails,
                              updatedQueueDetails: updatedQueueDetails,
                              editable: editable,
                              updateColor: updateColor,
                              updateName: updateName,
                              removeParticipant: removeParticipant,
                              updateTracker: updateTracker,
                            ),
                          ),
                          onHorizontalDragUpdate: (details) {
                            int sensitivity = 15;
                            if (details.delta.dx > sensitivity) {
                              context.router.pop();
                            }
                          },
                        ),
                        onWillPop: () =>
                            _onWillPop(editable, updatedQueueDetails != null),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
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

  Widget leaveAndLoad(BuildContext context) {
    context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
    Future.delayed(Duration.zero, () async {
      context.router.pop();
    });
    return Wrap();
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
