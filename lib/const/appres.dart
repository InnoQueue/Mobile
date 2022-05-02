import 'dart:ui';

import 'package:flutter/material.dart';

class AppRes {
  static const String todoTasks = 'to-do tasks';
  static const String queues = 'queues';
  static const String notifications = 'notifications';
  static const String settings = 'settings';

  // splash page
  static const imgPath = "images/introduction-samples";
  static const howToUse = {
    'page-1': {
      'title': "How do I use the app?",
      'text': "Let us briefly introduce you to this app...",
      'img': "",
    },
    'page-2': {
      'title': 'How do I work with Todos?',
      'text':
          "When a task is followed by a red dot to the left of it, it means the task is Urgent!",
      'img': "$imgPath/urgent.png",
    },
    'page-3': {
      'title': 'How do I work with Todos?',
      'text':
          "The colored circle inside the task is just a color tag for your convenience.",
      'img': "$imgPath/color-tag.png",
    },
    'page-4': {
      'title': 'How do I work with Todos?',
      'text': "You can skip tasks swiping them to the left.",
      'img': "$imgPath/skip.png",
    },
    'page-5': {
      'title': 'How do I work with Todos?',
      'text':
          "Or you can mark them complete tapping the circle to the right side of the task.",
      'img': "$imgPath/complete.png",
    },
    'page-6': {
      'title': 'How do I work with Todos?',
      'text':
          "You can select multiple todos holding your finger on one of the tasks.",
      'img': "$imgPath/multiple.png",
    },
    'page-7': {
      'title': 'How do I work with Queues?',
      'text': "To join a queue, tap this icon and follow instructions.",
      'img': "",
    },
  };

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
