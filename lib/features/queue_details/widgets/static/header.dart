import 'package:flutter/material.dart';
import 'package:inno_queue/const/const.dart';

import '../../../features.dart';

class Header extends StatefulWidget {
  final QueueDetailsModel queueDetailsModel;
  const Header({required this.queueDetailsModel, Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors[widget.queueDetailsModel.color],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
          child: Text(
            widget.queueDetailsModel.name,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
