import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/utils/cache_service.dart';
import 'package:inno_queue/features/splash/widgets/introduction.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final Future future;

  @override
  void initState() {
    super.initState();
    future = CacheService.checkFirstLaunch();
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
