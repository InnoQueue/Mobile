import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/tasks/model/task_model.dart';

part 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<TaskModel> items;
  const TaskList({required this.items, Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  late List<TaskTile> _items;
  final List<TaskTile> _hiddenItems = [];

  @override
  void initState() {
    super.initState();
    _items = widget.items
        .map((item) => TaskTile(taskModel: item, removeItem: removeItem))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Dismissible(
            key: Key(_items[index].hashCode.toString()),
            child:
                _hiddenItems.contains(_items[index]) ? Wrap() : _items[index],
            background: Stack(children: [
              background,
              skip,
            ]),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                _items[index] = TaskTile.from(_items[index]);
                _hiddenItems.add(_items[index]);
              });
            },
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: _hiddenItems.contains(_items[index]) ? 0 : 10,
      ),
    );
  }

  Widget background = Container(
    height: 80,
    decoration: BoxDecoration(
      color: Colors.orange[400],
      borderRadius: BorderRadius.circular(15),
    ),
  );

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

  void removeItem(TaskTile tile) {
    if (mounted) {
      setState(() {
        _hiddenItems.add(tile);
      });
    }
  }
}
