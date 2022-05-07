import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/text_field_validator.dart';

class TaskExpensesDialog extends StatefulWidget {
  final BuildContext buildContext;
  final TaskModel? taskModel;
  final QueueDetailsModel? queueDetialsModel;
  final Function? removeItem;
  final bool expanded;
  final bool emptyingWaitingList;
  final bool emptyingSelectedList;
  final Function? reverseAnimation;
  const TaskExpensesDialog({
    required this.buildContext,
    this.taskModel,
    this.removeItem,
    this.queueDetialsModel,
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
  GlobalKey<FormState> formKey = GlobalKey();
  String? valueText;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.taskModel != null
          ? widget.taskModel!.name
          : widget.queueDetialsModel != null
              ? widget.queueDetialsModel!.name
              : ""),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(widget.taskModel != null
                ? AppLocalizations.of(context)!.translate('how much it cost') ??
                    'Enter how much it cost:'
                : widget.queueDetialsModel != null
                    ? AppLocalizations.of(context)!
                            .translate('how much you spent') ??
                        'Enter how much you spent:'
                    : ""),
            Form(
              key: formKey,
              child: Row(
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
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            AppLocalizations.of(context)!.translate('cancel') ?? 'Cancel',
          ),
          onPressed: () => handleCancel(),
        ),
        TextButton(
          child: Text(
            AppLocalizations.of(context)!.translate('approve') ?? 'Approve',
          ),
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              if (widget.taskModel != null) {
                removeItemOnApproved();
              } else {
                context.read<QueueDetailsBloc>().add(
                    QueueDetailsEvent.addProgress(
                        double.parse(valueText!.replaceAll(',', '.'))));
              }

              Navigator.of(context).pop();
            }
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
        expenses: double.parse(valueText!.replaceAll(',', '.')));
    widget.buildContext.read<TasksListBloc>().add(TasksListEvent.setTaskDone(
        widget.taskModel!,
        expenses: double.parse(valueText!.replaceAll(',', '.'))));
    emptyList(false);
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
    return TextFormField(
      onChanged: (value) => widget.onChanged(value),
      keyboardType: TextInputType.number,
      controller: _textFieldController,
      cursorColor: Colors.grey,
      validator: TextFieldValidator.validateNumeric,
      decoration: AppRes.inputDecoration.copyWith(
        hintText: AppLocalizations.of(context)!.translate('price') ?? "price",
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
