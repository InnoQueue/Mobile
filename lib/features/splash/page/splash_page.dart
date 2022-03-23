import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/features/splash/widgets/introduction.dart';
import 'package:inno_queue/features/tasks/widgets/task_list.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final Future future;

  Future<bool> isFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    return false;
  }

  @override
  void initState() {
    future = isFirstLaunch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: future,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (!snapshot.hasData)
              return const SizedBox.shrink();
            if (snapshot.data == true) {
              return IntroductionPage();
            } else {
              context.router.replaceNamed('/home');
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
