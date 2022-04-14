import 'package:flutter/material.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
import 'package:provider/src/provider.dart';

class TaskExpensesDialog extends StatefulWidget {
  final BuildContext buildContext;
  final TaskTile? taskTile;
  final QueueModel? queueModel;
  final Function? removeItem;
  final bool expanded;
  final bool emptyingWaitingList;
  final bool emptyingSelectedList;
  final Function? reverseAnimation;
  const TaskExpensesDialog({
    required this.buildContext,
    this.taskTile,
    this.removeItem,
    this.queueModel,
    this.expanded = false,
    this.emptyingWaitingList = false,
    this.emptyingSelectedList = false,
    this.reverseAnimation,
    Key? key,
  }) : super(key: key);

  @override
  State<TaskExpensesDialog> createState() => _TaskExpensesDialogState();
}

class _TaskExpensesDialogState extends State<TaskExpensesDialog> {
  final TextEditingController _textFieldController = TextEditingController();
  String? valueText;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.taskTile != null
          ? widget.taskTile!.taskModel.name
          : widget.queueModel != null
              ? widget.queueModel!.name
              : ""),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(widget.taskTile != null
                ? 'Enter how much it cost:'
                : widget.queueModel != null
                    ? 'Enter how much you spent:'
                    : ""),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        valueText = value;
                      });
                    },
                    keyboardType: TextInputType.number,
                    controller: _textFieldController,
                    cursorColor: Colors.black,
                    cursorWidth: 1.5,
                    decoration: const InputDecoration(
                      hintText: "price",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 15,
                  alignment: Alignment.centerRight,
                  child: const Text(
                    '₽',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            emptyList(true);
            if (widget.reverseAnimation != null) {
              widget.reverseAnimation!();
            }
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text(
            'Approve',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            if (widget.taskTile != null) {
              widget.removeItem!(widget.buildContext, widget.taskTile,
                  expanded: widget.expanded, done: true);
              widget.buildContext
                  .read<TasksListBloc>()
                  .add(TasksListEvent.setTaskDone(widget.taskTile!));
              emptyList(false);
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  void emptyList(bool pass) {
    if (widget.emptyingWaitingList) {
      widget.buildContext
          .read<TasksListBloc>()
          .add(TasksListEvent.emptyWaitingList(widget.taskTile!, pass: pass));
    }
    if (widget.emptyingSelectedList) {
      widget.buildContext
          .read<TasksListBloc>()
          .add(TasksListEvent.emptySelectedList(widget.taskTile!, pass: pass));
    }
  }
}
