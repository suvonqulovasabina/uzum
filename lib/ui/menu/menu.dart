import 'package:flutter/material.dart';
import 'package:uzum/ui/menu/uzum_market_item.dart';


import '../../../utils/constants/assets.dart';
import 'menu_item.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: const Text('All services', style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const UzumMarketItem(
              title: 'Uzum Nasiya',
              subtitle: 'Installments in Uzum Bank',
              image: Assets.uzumLogo,
            ),
            const SizedBox(height: 16),
            const UzumMarketItem(
              title: 'Uzum Nasiya',
              subtitle: 'Installments in Uzum Bank',
              image: Assets.uzumLogo,
            ),
            const SizedBox(height: 16),
            for (int i = 0; i < 10; ++i) MenuItem(data: MenuItemData(icon: Assets.uzumLogo, name: 'Uzum Market')),
          ],
        ),
      ),
    );
  }
}
