import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/tasks/bloc/tasks_list_bloc/tasks_list_bloc.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';
import 'package:inno_queue/helpers/getit_service_locator.dart';

part 'task_tile.dart';
part 'done_button.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> items;
  const TaskList({required this.items, Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> with TickerProviderStateMixin {
  late List<TaskTile> _items;
  final List<TaskTile> _hiddenItems = [];
  late AnimationController _arrowAnimationController;
  late Animation _arrowAnimation;

  @override
  void initState() {
    super.initState();
    _items = widget.items
        .map((item) => TaskTile(
              taskModel: item,
              key: GlobalKey<_TaskTileState>(),
            ))
        .toList();

    _arrowAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _arrowAnimation =
        Tween(begin: 0.0, end: 1.0).animate(_arrowAnimationController);
  }

  @override
  Widget build(BuildContext context) {
    TaskTile? prevExpanded;
    return BlocProvider(
      create: (_) =>
          getIt.get<TasksListBloc>()..add(TasksListEvent.initTasks(_items)),
      child: BlocBuilder<TasksListBloc, TasksListState>(
        builder: (context, state) {
          return state.when(
            initial: () => Wrap(),
            dataManaged: (items, expanded) {
              if (prevExpanded == expanded) {
                _arrowAnimationController.isCompleted
                    ? _arrowAnimationController.reverse()
                    : _arrowAnimationController.forward();
              } else {
                _arrowAnimationController.reverse();
              }
              prevExpanded = expanded;
              return ListView.separated(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  bool isExpanded = expanded == items[index];
                  return AnimatedPadding(
                    duration: const Duration(milliseconds: 200),
                    padding: isExpanded
                        ? EdgeInsets.zero
                        : const EdgeInsets.symmetric(horizontal: 10),
                    child: AnimatedBuilder(
                      animation: _arrowAnimationController,
                      builder: (context, child) => ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(
                            isExpanded ? _arrowAnimation.value * 15 : 15)),
                        child: Dismissible(
                          key: Key(items[index].hashCode.toString()),
                          child: items[index],
                          background: Stack(children: [
                            background,
                            skip,
                          ]),
                          direction: isExpanded
                              ? DismissDirection.none
                              : DismissDirection.endToStart,
                          onDismissed: (direction) {
                            context
                                .read<TasksListBloc>()
                                .add(TasksListEvent.hideTask(items[index]));
                          },
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: _hiddenItems.contains(_items[index]) ? 0 : 10,
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget background = Container(height: 80, color: Colors.orange[400]);

  Container skip = Container(
    padding: const EdgeInsets.only(right: 20.0),
    alignment: Alignment.centerRight,
    child: Wrap(
      direction: Axis.vertical,
      children: const [
        Icon(
          Icons.reply,
          size: 30,
          color: Colors.white,
        ),
        Text(
          "Skip",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
