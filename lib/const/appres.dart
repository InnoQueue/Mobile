import 'dart:ui';

class AppRes {
  static const String todoTasks = 'to-do tasks';
  static const String queues = 'queues';
  static const String notifications = 'notifications';
  static const String settings = 'settings';

  // splash page
  static const howToUse = {
    'page-1': {
      'title': "How do I use the app?",
      'text': "Let us briefly introduce you to this app...",
    },
    'page-2': {
      'title': 'How do I work with Todos?',
      'text':
          "When a task is followed by a red dot to the left of it, it means the task is Urgent!",
    },
    'page-3': {
      'title': 'How do I work with Todos?',
      'text':
          "The colored circle inside the task is just a color tag for your convenience.",
    },
    'page-4': {
      'title': 'How do I work with Todos?',
      'text': "You can skip tasks swiping them to the left.",
    },
    'page-5': {
      'title': 'How do I work with Todos?',
      'text':
          "Or you can mark them complete tapping the circle to the right side of the task.",
    },
  };

  static const greyFilter = ColorFilter.matrix(<double>[
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
}
