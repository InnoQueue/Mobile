part of 'queue_details_page.dart';

class _Body extends StatefulWidget {
  final QueueDetailsModel originalQueueDetails;
  final QueueDetailsModel? updatedQueueDetails;
  final bool editable;
  final Function updateColor;
  final Function updateName;
  final Function removeParticipant;
  final Function updateTracker;
  const _Body({
    Key? key,
    required this.originalQueueDetails,
    required this.updatedQueueDetails,
    required this.editable,
    required this.updateColor,
    required this.updateName,
    required this.removeParticipant,
    required this.updateTracker,
  }) : super(key: key);

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  late var currentQueueDetails =
      widget.updatedQueueDetails ?? widget.originalQueueDetails;

  @override
  Widget build(BuildContext context) {
    return !(widget.originalQueueDetails.participants.isEmpty &&
            !widget.editable)
        ? NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overScroll) {
              overScroll.disallowIndicator();
              return false;
            },
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: widget.editable
                        ? EditableHeader(
                            queueDetailsModel: currentQueueDetails,
                            updateColor: widget.updateColor,
                            updateName: widget.updateName,
                          )
                        : Header(queueDetailsModel: currentQueueDetails),
                  ),
                  if (!widget.editable && widget.originalQueueDetails.isActive)
                    const SizedBox(
                      height: 20,
                    ),
                  if (!widget.editable && currentQueueDetails.isActive)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: queueDetailsPadding),
                      child: _AddProgressButton(
                        queueDetialsModel: currentQueueDetails,
                      ),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  widget.editable
                      ? EditableParticipants(
                          queueDetailsModel: currentQueueDetails,
                          removeParticipant: widget.removeParticipant,
                        )
                      : Participants(
                          queueDetailsModel: currentQueueDetails,
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (widget.editable)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TrackExpensesButton(
                        initValue: currentQueueDetails.trackExpenses,
                        updateTracker: widget.updateTracker,
                      ),
                    ),
                ],
              ),
            ),
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Header(queueDetailsModel: widget.originalQueueDetails),
              ),
              if (widget.originalQueueDetails.trackExpenses &&
                  widget.originalQueueDetails.isActive)
                const SizedBox(
                  height: 20,
                ),
              if (widget.originalQueueDetails.trackExpenses &&
                  widget.originalQueueDetails.isActive)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: queueDetailsPadding),
                  child: _AddProgressButton(
                    queueDetialsModel: widget.originalQueueDetails,
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              ParticipantTile(
                user: widget.originalQueueDetails.currentUser,
                queueDetailsModel: widget.originalQueueDetails,
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
          );
  }
}
