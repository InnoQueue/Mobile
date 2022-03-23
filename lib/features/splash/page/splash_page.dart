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

  // this function checks if it is our first launch for the app
  // if it is, we reflect it in shared preferences so that next time
  // we open application, it has firstLaunch=false
  Future<bool> checkFirstLaunch() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? isFirstLaunch = prefs.getBool('isFirstLaunch');
    await prefs.setBool('isFirstLaunch', false);
    return isFirstLaunch ?? true;
  }

  @override
  void initState() {
    future = checkFirstLaunch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: future,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (!snapshot.hasData) return const SizedBox.shrink();
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
