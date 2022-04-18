import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';

class NoItemsWidget extends StatelessWidget {
  final String imagePath;
  final String message;
  const NoItemsWidget(
      {required this.imagePath, required this.message, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorFiltered(
            colorFilter: AppRes.greyFilter,
            child: Image.asset(
              imagePath,
              height: 125,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
