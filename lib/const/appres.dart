import 'dart:ui';

import 'package:flutter/material.dart';

class AppRes {
  static const String todoTasks = 'to-do tasks';
  static const String queues = 'queues';
  static const String notifications = 'notifications';
  static const String settings = 'settings';
  static const String notificationSettings = 'notification settings';
  static const String languageSettings = 'language';
  static const String themeSettings = 'theme';

  // img paths
  static const imgShadowDark = 'images/shadow-dark.png';

  // splash page
  static const imgPath = "images/introduction-samples";
  static const List<Map<String, dynamic>> howToUse = [
    {
      'header-img': "$imgPath/../logo_outlined.png",
      'title': "welcome title",
      'text': "welcome text",
    },
    {
      'title': "circular queues title",
      'text': "circular queues text",
      'img': '$imgPath/queue-flow.png',
    },
    {
      'title': 'queues usage title',
      'text': "queues usage text 1",
      'img': "$imgPath/add-progress.png",
    },
    {
      'title': 'queues usage title',
      'text': "queues usage text 2",
      'icon': Icons.qr_code_rounded,
      'sub-text': "queues usage subtext",
    },
    {
      'title': 'todos usage',
      'text': "todos text 1",
      'img': "$imgPath/complete.png",
    },
    {
      'title': 'todos usage',
      'text': "todos text 2",
      'img': "$imgPath/skip.png",
    },
    {
      'title': 'todos usage',
      'text': "todos text 3",
      'img': "$imgPath/urgent.png",
    },
    {
      'title': 'todos usage',
      'text': "todos text 4",
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
