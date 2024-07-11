import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
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
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: navigationShell,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: (index) {
              context.read<BottomNavigationBloc>().add(ChangeNavigation(index: index));
              _goBranch(index);
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            iconSize: 30,
            selectedItemColor: LightColors.primary,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: state.index,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(Assets.uzumLogoIcon, height: 24, width: 24, color: state.index == 0 ? LightColors.primary : Colors.grey),
                label: "Main",
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.transfer, height: 24, width: 24, color: state.index == 1 ? LightColors.primary : Colors.grey),
                  label: "Transfer"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.payment, height: 24, width: 24, color: state.index == 2 ? LightColors.primary : Colors.grey),
                  label: "Payment"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(Assets.support, height: 24, width: 24, color: state.index == 3 ? LightColors.primary : Colors.grey),
                  label: "Support"),
              BottomNavigationBarItem(
                icon: Image.asset(Assets.icMenuAll, height: 24, width: 24, color: state.index == 4 ? LightColors.primary : Colors.grey),
                label: "Menu",
              ),
            ],
          ),
        );
      },
    );
  }

  void _goBranch(int index) {
    navigationShell.goBranch(index, initialLocation: true //index == navigationShell.currentIndex,
        );
  }
}
