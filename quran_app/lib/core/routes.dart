import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/features/data/pagecubit/cubit/page_cubit.dart';
import 'package:quran_app/features/presentation/views/HomeView.dart';
import 'package:quran_app/features/presentation/views/SearchView.dart';
import 'package:quran_app/features/presentation/views/splashview.dart';

class Approutes {
  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: "/check",
      builder: (context, state) {
        return  BlocProvider(
          create: (context) => PageCubit(),
          child: const HomeView(),
        );
      },
    ),
  ]);
}
