import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';

class QueuesPage extends StatelessWidget {
  const QueuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
          child: Text(
        AppRes.queues,
        style: TextStyle(
          fontSize: 40,
        ),
      )),
    );
  }
}
