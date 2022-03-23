import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/features/tasks/widgets/task_list.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titlePadding:
      EdgeInsets.only(top: MediaQuery.of(context).size.height / 5),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19.0),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
      pageColor: Colors.blueGrey[50],
      imagePadding: EdgeInsets.zero,
    );

    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd() {
      context.router.replaceNamed('/home');
    }

    return IntroductionScreen(
      globalBackgroundColor: Colors.blueGrey[50],
      pages: [
        PageViewModel(
          title: AppRes.howToUse['page-1']!['title'],
          body: AppRes.howToUse['page-1']!['text'],
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: AppRes.howToUse['page-2']!['title'],
          body: AppRes.howToUse['page-2']!['text'],
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TaskTile(
              isUrgent: true,
              color: Colors.white,
              name: 'Task #1',
              removeItem: () {},
            ),
          ),
        ),
        PageViewModel(
          title: AppRes.howToUse['page-3']!['title'],
          body: AppRes.howToUse['page-3']!['text'],
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TaskTile(
              isUrgent: false,
              color: Colors.blue,
              name: 'Task #2',
              removeItem: () {},
            ),
          ),
        ),
        PageViewModel(
          title: AppRes.howToUse['page-4']!['title'],
          body: AppRes.howToUse['page-4']!['text'],
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/introduction-sample.png'),
          ),
        ),
        PageViewModel(
          title: AppRes.howToUse['page-5']!['title'],
          body: AppRes.howToUse['page-5']!['text'],
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TaskTile(
              isUrgent: false,
              color: Colors.amber,
              name: 'Complete me!   👉',
              removeItem: () {},
            ),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(),
      showDoneButton: true,
      showBackButton: true,
      showNextButton: true,
      skipOrBackFlex: 1,
      nextFlex: 1,
      done: const Text('Got it',
          style: TextStyle(fontWeight: FontWeight.w600)),
      back: const Icon(Icons.arrow_back),
      next: const Icon(Icons.arrow_forward),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(8.0, 8.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}