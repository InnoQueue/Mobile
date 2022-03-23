import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      context.router.replaceNamed('/home');
    });
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(AppRes.howToUse),
        ),
      ),
    );
  }
}
