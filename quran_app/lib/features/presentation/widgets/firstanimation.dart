import 'package:flutter/material.dart';

class FirstAnimation extends StatelessWidget {
  const FirstAnimation({
    super.key,
    required this.animation,
  });

  final Animation animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: animation as dynamic,
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.width * .25,
            backgroundImage: const AssetImage('assets/quranlogo.png'),
          ),
        );
      },
    );
  }
}