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
  late AnimationController _expandAnimationController;
  late Animation _expandAnimation;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _items = widget.items
        .map((item) => TaskTile(
              taskModel: item,
              key: GlobalKey<_TaskTileState>(),
            ))
        .toList();

    _expandAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _expandAnimation =
        Tween(begin: 0.0, end: 15.0).animate(_expandAnimationController);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt.get<TasksListBloc>()..add(TasksListEvent.initTasks(_items)),
      child: BlocBuilder<TasksListBloc, TasksListState>(
        builder: (context, state) {
          return state.when(
            initial: () => Wrap(),
            dataManaged: (items, expanded) {
              if (expanded != null) {
                _expandAnimationController.reverse();
              } else {
                _expandAnimationController.isCompleted
                    ? _expandAnimationController.reverse()
                    : _expandAnimationController.forward();
              }
              return AnimatedList(
                key: _listKey,
                initialItemCount: items.length,
                itemBuilder: (context, index, animation) {
                  bool isExpanded = expanded == items[index];
                  return AnimatedPadding(
                    duration: const Duration(milliseconds: 200),
                    padding: isExpanded
                        ? const EdgeInsets.symmetric(vertical: 5)
                        : const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                    child: AnimatedBuilder(
                      animation: _expandAnimationController,
                      builder: (context, child) => ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(
                            isExpanded ? _expandAnimation.value : 15)),
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
                            _listKey.currentState!.removeItem(
                                index, (context, animation) => Wrap());
                            context
                                .read<TasksListBloc>()
                                .add(TasksListEvent.hideTask(items[index]));
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  void removeItem(TaskTile tile) {
    _listKey.currentState!.removeItem(_items.indexOf(tile), (_, animation) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-0.75, 0),
              end: const Offset(0, 0),
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
              ),
            ),
            child: ScaleTransition(
              scale: animation,
              child: SizeTransition(
                sizeFactor: animation,
                child: tile,
              ),
            )),
      );
    }, duration: const Duration(milliseconds: 300));
    _items.remove(tile);
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
