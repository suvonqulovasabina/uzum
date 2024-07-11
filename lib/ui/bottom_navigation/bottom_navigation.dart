import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/ui/bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:uzum/ui/theme/light_colors.dart';

import '../../utils/constants/assets.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: navigationShell,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: (index) {
              print('index: $index state.index ${state.index}');
              context.read<BottomNavigationBloc>().add(ChangeNavigation(index: index));
              _goBranch(index);
            },
            iconSize: 30,
            selectedItemColor: LightColors.primary,
            unselectedItemColor: Colors.grey,
            currentIndex: state.index,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(Assets.uzumLogoIcon, height: 24, width: 24, color: state.index == 0 ? LightColors.primary : Colors.grey),
                label: "Main",
              ),
              const BottomNavigationBarItem(icon: Icon(Icons.arrow_circle_right_outlined), label: "Transfer"),
              const BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Payment"),
              const BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Support"),
              BottomNavigationBarItem(
                icon: Image.asset(Assets.icMenuAll, height: 48, width: 48, color: state.index == 4 ? LightColors.primary : Colors.grey),
                label: "Menu",
              ),
            ],
          ),
        );
      },
    );
  }

  void _goBranch(int index) {
    print('go branch index: $index');
    navigationShell.goBranch(
      index, //initialLocation: index == navigationShell.currentIndex,
    );
  }
}
