import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/core/api/api_tasks.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:provider/src/provider.dart';

class TaskExpensesDialog extends StatefulWidget {
  final BuildContext buildContext;
  final TaskModel? taskModel;
  final QueueModel? queueModel;
  final Function? removeItem;
  final bool expanded;
  final bool emptyingWaitingList;
  final bool emptyingSelectedList;
  final Function? reverseAnimation;
  const TaskExpensesDialog({
    required this.buildContext,
    this.taskModel,
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
  String? valueText;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.taskModel != null
          ? widget.taskModel!.name
          : widget.queueModel != null
              ? widget.queueModel!.name
              : ""),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(widget.taskModel != null
                ? 'Enter how much it cost:'
                : widget.queueModel != null
                    ? 'Enter how much you spent:'
                    : ""),
            Row(
              children: [
                Expanded(
                  child: _TaskExpensesTextField(
                    onChanged: (value) {
                      setState(() {
                        valueText = value;
                      });
                    },
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
          onPressed: () => handleCancel(),
        ),
        TextButton(
          child: const Text(
            'Approve',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {
            if (widget.taskModel != null) {
              removeItemOnApproved();
            } else {
              addProgress();
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  void handleCancel() {
    emptyList(true);
    if (widget.reverseAnimation != null) {
      widget.reverseAnimation!();
    }
    Navigator.of(context).pop();
  }

  void removeItemOnApproved() {
    widget.removeItem!(widget.buildContext, widget.taskModel,
        expanded: widget.expanded,
        done: true,
        expenses: double.parse(valueText ?? ''));
    widget.buildContext.read<TasksListBloc>().add(TasksListEvent.setTaskDone(
        widget.taskModel!,
        expenses: double.parse(valueText ?? '')));
    emptyList(false);
  }

  void addProgress() {
    ApiTasksService.deleteTask(
      task: TaskModel(
        id: widget.queueModel!.id,
        name: widget.queueModel!.name,
        color: widget.queueModel!.color,
        trackExpenses: widget.queueModel!.trackExpenses,
      ),
      expenses: double.parse(valueText ?? ''),
    );
    context.read<QueueDetailsBloc>().add(QueueDetailsEvent.updateQueue());
  }

  void emptyList(bool pass) {
    if (widget.emptyingWaitingList) {
      widget.buildContext
          .read<TasksListBloc>()
          .add(TasksListEvent.emptyWaitingList(widget.taskModel!, pass: pass));
    }
    if (widget.emptyingSelectedList) {
      widget.buildContext
          .read<TasksListBloc>()
          .add(TasksListEvent.emptySelectedList(widget.taskModel!, pass: pass));
    }
  }
}

class _TaskExpensesTextField extends StatefulWidget {
  final Function onChanged;
  const _TaskExpensesTextField({
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<_TaskExpensesTextField> createState() => _TaskExpensesTextFieldState();
}

class _TaskExpensesTextFieldState extends State<_TaskExpensesTextField> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => widget.onChanged(value),
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
    );
  }
}
