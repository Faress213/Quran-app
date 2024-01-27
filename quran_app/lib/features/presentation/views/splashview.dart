import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/features/presentation/views/SplashViewbody.dart';

dynamic bright;
var generalpath;
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    bright = MediaQuery.of(context).platformBrightness;
   generalpath= GoRouterState.of(context).fullPath;
    return const SafeArea(
        child: Scaffold(
      body: SplashViewBody(),
    ));
  }
}
