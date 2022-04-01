import 'package:flutter/material.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
import 'package:provider/src/provider.dart';

class TaskExpensesDialog extends StatefulWidget {
  final BuildContext buildContext;
  final TaskTile taskTile;
  final Function removeItem;
  final bool expanded;
  final bool emptyingWaitingList;
  final bool emptyingSelectedList;
  const TaskExpensesDialog({
    required this.buildContext,
    required this.taskTile,
    required this.removeItem,
    required this.expanded,
    this.emptyingWaitingList = false,
    this.emptyingSelectedList = false,
    Key? key,
  }) : super(key: key);

  @override
  State<TaskExpensesDialog> createState() => _TaskExpensesDialogState();
}

class _TaskExpensesDialogState extends State<TaskExpensesDialog> {
  TextEditingController _textFieldController = TextEditingController();
  String? valueText;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.taskTile.taskModel.name),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            const Text('Enter how much it cost:'),
            TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _textFieldController,
              decoration: const InputDecoration(hintText: "price"),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'Approve',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            widget.removeItem(widget.buildContext, widget.taskTile,
                expanded: widget.expanded, done: true);
            widget.buildContext
                .read<TasksListBloc>()
                .add(TasksListEvent.skipTask(widget.taskTile));
            if (widget.emptyingWaitingList) {
              widget.buildContext
                  .read<TasksListBloc>()
                  .add(TasksListEvent.emptyWaitingList(widget.taskTile));
            }
            if (widget.emptyingSelectedList) {
              widget.buildContext
                  .read<TasksListBloc>()
                  .add(TasksListEvent.emptySelectedList(widget.taskTile));
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
