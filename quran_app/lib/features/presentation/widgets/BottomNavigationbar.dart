import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/data/pagecubit/cubit/page_cubit.dart';
import 'package:quran_app/features/presentation/views/HomeViewbody.dart';
import 'package:quran_app/features/presentation/widgets/alertdialog.dart';
import 'package:toggle_switch/toggle_switch.dart';

var currentindex = 0;

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(child: HomeViewBody()),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: BlocBuilder<PageCubit, PageState>(
            builder: (context, state) {
              return ToggleSwitch(
                customWidths: [
                  MediaQuery.of(context).size.width / 3,
                 
                  MediaQuery.of(context).size.width / 3
                ],
                cornerRadius: 50.0,
                activeBgColors: const [
                  [Colors.redAccent],
                  [Colors.redAccent],
                  [Colors.redAccent],
                ],
                curve: Curves.bounceIn,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: const ['السور', 'Pages'],
                icons: const [null,  Icons.pages],
                onToggle: (index) {
                  if (index == 1) {
                    showDialog(
                        context: context,
                        builder: ((context) => const NumberPickerDialog())).whenComplete(() => BlocProvider.of<PageCubit>(context).changeTapped(index!));
                  
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
