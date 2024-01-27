import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/styles.dart';
import 'package:quran_app/features/data/pagecubit/cubit/page_cubit.dart';
import 'package:quran_app/features/presentation/views/HomeViewbody.dart';
import 'package:quran_app/features/presentation/views/SearchView.dart';
import 'package:quran_app/features/presentation/widgets/BottomNavigationbar.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, PageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: hideappbar
              ? null
              : AppBar(
                  title: Text(
                    'القرآن الكريم',
                    style: Styles.style,
                  ),
                  centerTitle: true,
                ),
          body: const HomeViewBody(),
          bottomNavigationBar: const BottomNaviBar(),
          // const BottomNaviBar(),
        );
      },
    );
  }
}
