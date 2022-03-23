import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    final introKey = GlobalKey<IntroductionScreenState>();

    void _onIntroEnd() {
      print("intro end");
      context.router.replaceNamed('/home');
    }

    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          key: introKey,
          globalBackgroundColor: Colors.white,
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
            ),
            PageViewModel(
              title: AppRes.howToUse['page-3']!['title'],
              body: AppRes.howToUse['page-3']!['text'],
              decoration: pageDecoration,
            ),
            PageViewModel(
              title: AppRes.howToUse['page-4']!['title'],
              body: AppRes.howToUse['page-4']!['text'],
              decoration: pageDecoration,
            ),
          ],
          onDone: () => _onIntroEnd(),
          showDoneButton: true,
          showBackButton: true,
          showNextButton: true,
          skipOrBackFlex: 1,
          nextFlex: 1,
          done:
              const Text('Got it', style: TextStyle(fontWeight: FontWeight.w600)),
          back: const Icon(Icons.arrow_back),
          next: const Icon(Icons.arrow_forward),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Color(0xFFBDBDBD),
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
