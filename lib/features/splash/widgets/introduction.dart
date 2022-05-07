import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../core/widget/app_supertext.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainColor =
        // ignore: deprecated_member_use
        Theme.of(context).primaryColorBrightness == Brightness.dark
            ? Colors.grey[900]
            : Colors.blueGrey[50];
    final oppositeColor =
        // ignore: deprecated_member_use
        Theme.of(context).primaryColorBrightness != Brightness.dark
            ? Colors.grey[900]
            : Colors.blueGrey[50];

    var pageDecoration = PageDecoration(
      titlePadding:
          EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.w700, color: oppositeColor),
      bodyTextStyle: TextStyle(
          fontSize: 16.0,
          letterSpacing: 1.1,
          height: 1.5,
          color: oppositeColor),
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0.0),
      footerPadding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0),
      pageColor: mainColor,
      imagePadding: EdgeInsets.zero,
    );

    void _onIntroEnd() {
      context.router.replaceNamed('/registration');
    }

    return IntroductionScreen(
      globalBackgroundColor: mainColor,
      pages: [
        for (int i = 0; i < AppRes.howToUse.length; i++)
          PageViewModel(
              titleWidget: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  (AppRes.howToUse[i]['header-img'] != null
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Image.asset(AppRes.howToUse[i]['header-img']!,
                              width: 64),
                        )
                      : const SizedBox.shrink()),
                  Text(
                      AppLocalizations.of(context)!
                              .translate(AppRes.howToUse[i]['title']) ??
                          "",
                      style: pageDecoration.titleTextStyle),
                ],
              ),
              bodyWidget: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      AppLocalizations.of(context)!
                              .translate(AppRes.howToUse[i]['text']) ??
                          "",
                      style: pageDecoration.bodyTextStyle),
                ],
              ),
              decoration: pageDecoration,
              footer: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (AppRes.howToUse[i]['img'] != null
                      ? Image.asset(AppRes.howToUse[i]['img']!)
                      : const SizedBox.shrink()),
                  (AppRes.howToUse[i]['icon'] != null
                      ? Icon(AppRes.howToUse[i]['icon'],
                          color: oppositeColor, size: 64)
                      : const SizedBox.shrink()),
                  (AppRes.howToUse[i]['sub-text'] != null
                      ? Padding(
                          padding: const EdgeInsets.only(top: 48.0),
                          child: AppSuperText(
                              AppLocalizations.of(context)!.translate(
                                      AppRes.howToUse[i]['sub-text']) ??
                                  "",
                              style: pageDecoration.bodyTextStyle),
                        )
                      : const SizedBox.shrink()),
                ],
              )),
      ],
      onDone: () => _onIntroEnd(),
      showDoneButton: true,
      showBackButton: true,
      showNextButton: true,
      skipOrBackFlex: 1,
      nextFlex: 1,
      done: Text(AppLocalizations.of(context)!.translate('continue') ?? "",
          style: pageDecoration.bodyTextStyle
              .copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
      back: Icon(Icons.arrow_back, color: oppositeColor),
      next: Icon(Icons.arrow_forward, color: oppositeColor),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(20),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        spacing: EdgeInsets.all(1),
        size: Size(6.0, 6.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(16.5, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    );
  }
}
