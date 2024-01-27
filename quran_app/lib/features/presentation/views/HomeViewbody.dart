import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/data/pagecubit/cubit/page_cubit.dart';
import 'package:quran_app/main.dart';

late PageController pageController;
bool hideappbar = false;

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key});

  @override
  Widget build(BuildContext context) {
    pageController = PageController();

    return GestureDetector(
      child: PageView.builder(
        controller: pageController,
        reverse: true,
        itemCount: Pictures.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                 
                  child: InteractiveViewer(
                    clipBehavior: Clip.none,
                    maxScale: 5,
                    minScale: 1,
                    child: Image.asset(Pictures[index])),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
