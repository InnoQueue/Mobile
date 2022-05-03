import 'dart:ui';

import 'package:flutter/material.dart';

class AppRes {
  static const String todoTasks = 'to-do tasks';
  static const String queues = 'queues';
  static const String notifications = 'notifications';
  static const String settings = 'settings';

  // img paths
  static const imgShadowDark = 'images/shadow-dark.png';

  // splash page
  static const imgPath = "images/introduction-samples";
  static const List<Map<String, dynamic>> howToUse = [
    {
      'header-img': "$imgPath/../logo_outlined.png",
      'title': "Welcome to InnoQ!",
      'text': "Here we aim to help you manage your chores with roommates.\n\n"
          "Here's how it works:\n\n"
          "👉 You create a Queue.\n"
          "👉 You invite your friends.\n"
          "👉 The app will do the rest for you!",
    },
    {
      'title': "Queues are circular",
      'text': "↻ Meaning, each person in the Queue will do the chores one by one and after that the Queue starts over.",
      'img': '$imgPath/queue-flow.png',
    },
    {
      'title': 'How do I use Queues?',
      'text': "😳 To register progress press the Add Progress button and the system will recognize your contribution.\n\n"
          "😇 Even if it's not your turn, the app will count it and skip you the next time it is your turn.\n",
      'img': "$imgPath/add-progress.png",
    },
    {
      'title': 'How do I use Queues?',
      'text': "\n👆 To join a Queue tap this icon and follow further instructions.\n\n",
      'icon': Icons.qr_code_rounded,
    },
    {
      'title': 'How do I use Todos?',
      'text':
          "🔔 The one responsible for the chores receives a notification and the task shows in their To-do list.\n\n"
              "✔️ When you're shown a task, you should complete it and tap the circle on the right.\n\n"
              "🫡 The app will then go on to the next person in the Queue.",
      'img': "$imgPath/complete.png",
    },
    {
      'title': 'How do I use Todos?',
      'text': "❌ Or you can skip the task swiping it to the left if you don't feel like doing it today.\n\n"
          "🙃 Though, do note that you will have to do it twice the next time.",
      'img': "$imgPath/skip.png",
    },
    {
      'title': 'How do I use Todos?',
      'text': "🔥 When a task is preceded by a red dot, it means the task is Urgent!\n\n"
          "👋 It becomes Urgent when your roommates Shake you!",
      'img': "$imgPath/urgent.png",
    },
    {
      'title': 'How do I use Todos?',
      'text': "You can select multiple todos holding your finger on one of the tasks.",
      'img': "$imgPath/multiple.png",
    },
  ];

  static const grayFilter = ColorFilter.matrix(<double>[
    0.3,
    0.7,
    0.2,
    0,
    0,
    0.3,
    0.7,
    0.2,
    0,
    0,
    0.3,
    0.7,
    0.2,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);

  static const inputDecoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
  );
}
