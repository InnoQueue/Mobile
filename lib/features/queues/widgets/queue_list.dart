import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';

part 'queue_tile.dart';

class QueueList extends StatelessWidget {
  final String? keyWord;
  QueueList({this.keyWord, Key? key}) : super(key: key);

  // ignore: prefer_final_fields
  List<QueueTile> _items() {
    return [
      QueueTile(
        color: Colors.red,
        name: '${keyWord ?? ''}Queue 1',
      ),
      QueueTile(
        color: Colors.orangeAccent,
        name: '${keyWord ?? ''}Queue 2',
      ),
      QueueTile(
        color: Colors.purpleAccent,
        name: '${keyWord ?? ''}Queue 3',
      ),
      QueueTile(
        color: Colors.greenAccent,
        name: '${keyWord ?? ''}Queue 4',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _items().length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: _items()[index],
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}
