import 'package:flutter/material.dart';

class QueuesPage extends StatelessWidget {
  const QueuesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
          child: Text(
        'QUEUES',
        style: TextStyle(
          fontSize: 40,
        ),
      )),
    );
  }
}
