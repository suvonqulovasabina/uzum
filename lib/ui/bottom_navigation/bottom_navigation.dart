import 'package:flutter/material.dart';
import 'package:uzum/ui/payment/payment_screens.dart';

import '../home/home_page.dart';

import '../menu/menu.dart';
import '../payment/payment.dart';
import '../support/support_screen.dart';
import '../transfers/transfers.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomState();
}

class _BottomState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  List<Widget> bottom = [
     HomePage(),
    MenuPage(),
     PaymentScreens(),
    const SupportScreen(),
     HomePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: bottom,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 74,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomNavigationItem(Icons.home, 'Home', 0),
              _buildBottomNavigationItem(Icons.search, 'Search', 1),
              _buildBottomNavigationItem(
                Icons.shopping_basket_rounded,
                'Basket',
                2,
                badgeContent: '3',
              ),
              _buildBottomNavigationItem(Icons.book_online_rounded, 'Box', 3),
              _buildBottomNavigationItem(Icons.person, 'Profile', 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationItem(
    IconData icon,
    String label,
    int index, {
    String? badgeContent,
  }) {
    Widget iconWidget = Icon(
      icon,
      size: 32,
      color: _selectedIndex == index ? Colors.deepPurple : Colors.grey,
    );

    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget,
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.deepPurple : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
