import 'package:flutter/material.dart';
import 'package:inno_queue/features/tasks/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  late List<TaskTile> _items;
  final List<TaskTile> _hiddenItems = [];

  @override
  void initState() {
    super.initState();
    _items = [
      TaskTile(
        isUrgent: true,
        color: Colors.red,
        name: 'Task 1',
        removeItem: removeItem,
      ),
      TaskTile(
        isUrgent: true,
        color: Colors.orangeAccent,
        name: 'Task 2',
        removeItem: removeItem,
      ),
      TaskTile(
        isUrgent: false,
        color: Colors.purpleAccent,
        name: 'Task 3',
        removeItem: removeItem,
      ),
      TaskTile(
        isUrgent: false,
        color: Colors.greenAccent,
        name: 'Task 1',
        removeItem: removeItem,
      ),
    ];
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
      color: Colors.red,
      borderRadius: BorderRadius.circular(15),
    ),
  );

  Container skip = Container(
    padding: const EdgeInsets.only(right: 20.0),
    alignment: Alignment.centerRight,
    child: const Text(
      "Skip",
      textAlign: TextAlign.right,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
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
