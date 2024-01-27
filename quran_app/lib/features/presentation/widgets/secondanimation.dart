import 'package:flutter/material.dart';

class SecondAnimation extends StatelessWidget {
  const SecondAnimation({
    super.key,
    required this.animation2,
  });

  final Animation animation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation2,
      builder: (context, child) {
        return SlideTransition(
            position: animation2 as dynamic,
            child: const Icon(Icons.arrow_forward_rounded));
      },
    );
  }
}