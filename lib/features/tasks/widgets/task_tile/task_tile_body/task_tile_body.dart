import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/features.dart';

part 'done_button.dart';
part 'expanded_skip_button.dart';
part 'expanded_done_button.dart';
part 'shaken_sign.dart';
part 'task_name.dart';
part 'shaken_indicator.dart';
part 'avatar.dart';
part 'selected _indicator.dart';

class TaskTileBody extends StatefulWidget {
  final TaskModel taskModel;
  final bool expanded;
  final bool selected;
  final bool noItemSelected;
  final Function removeItem;
  final Function setDone;
  final Function setUndone;
  const TaskTileBody({
    Key? key,
    required this.taskModel,
    this.expanded = false,
    this.selected = false,
    this.noItemSelected = true,
    required this.removeItem,
    required this.setDone,
    required this.setUndone,
  }) : super(key: key);

  @override
  State<TaskTileBody> createState() => _BodyState();
}

class _BodyState extends State<TaskTileBody> {
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            _ShakenIndicator(
              isImportant: widget.taskModel.isImportant ?? false,
              isExpanded: widget.expanded,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                _Avatar(
                  color: widget.taskModel.color,
                  isExpanded: widget.expanded,
                ),
                _SelectedIndicator(
                  expanded: widget.expanded,
                  selected: widget.selected,
                ),
              ],
            ),
            const SizedBox(width: 20),
            _TaskName(
              name: widget.taskModel.name,
              isExpanded: widget.expanded,
            ),
            _DoneButton(
              expanded: widget.expanded,
              noItemSelected: widget.noItemSelected,
              taskModel: widget.taskModel,
              setDone: widget.setDone,
              setUndone: widget.setUndone,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.taskModel.isImportant ?? false)
                _ShakenSign(
                  isExpanded: widget.expanded,
                )
              else
                Wrap(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: [
                    AnimatedScale(
                      duration: const Duration(milliseconds: 200),
                      scale: widget.expanded ? 1 : 0,
                      child: GestureDetector(
                        child: const Icon(Icons.list),
                        onTap: () {
                          // context
                          //     .read<AppBarBloc>()
                          //     .add(RouteChangedEvent(widget.taskModel.));
                          // context.read<QueueDetailsBloc>().add(
                          //     QueueDetailsEvent.openQueue(widget.taskModel.));
                          // context.router.push(const QueueDetailsRoute());
                        },
                      ),
                    ),
                    _ExpandedSkipButton(
                      taskModel: widget.taskModel,
                      removeItem: widget.removeItem,
                      isExpanded: widget.expanded,
                      key: const ValueKey("ExpandedSkipButton"),
                    ),
                    _ExpandedDoneButton(
                      taskModel: widget.taskModel,
                      removeItem: widget.removeItem,
                      isExpanded: widget.expanded,
                      key: const ValueKey("ExpandedDoneButton"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
