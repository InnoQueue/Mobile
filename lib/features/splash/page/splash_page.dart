import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_base.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/features/splash/widgets/introduction.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final Future future;

  @override
  void initState() {
    future = CacheService.checkFirstLaunch();
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
              ApiBaseService.authenticate();
              return const IntroductionPage();
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
