import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';

part 'done_button.dart';
part 'expanded_skip_button.dart';
part 'expanded_done_button.dart';
part 'expanded_open_queue_button.dart';
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
                    _ExpandedOpenQueueButton(
                      isExpanded: widget.expanded,
                      taskModel: widget.taskModel,
                      key: const ValueKey("ExpandedOpenQueueButton"),
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
