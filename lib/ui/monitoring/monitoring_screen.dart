import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uzum/ui/monitoring/tab/history_tab.dart';
import 'package:uzum/ui/monitoring/tab/my_cards_tab.dart';
import 'package:uzum/ui/theme/components.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/ui/theme/my_images.dart';

class MonitoringScreen extends StatefulWidget {
  const MonitoringScreen({super.key});

  @override
  State<MonitoringScreen> createState() => _MonitoringScreenState();
}

class _MonitoringScreenState extends State<MonitoringScreen> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: LightColors.white3,
      statusBarIconBrightness: Brightness.dark
    ));
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: LightColors.white3,
          body: Column(
            children: [
              const SizedBox(height: 16,),
              appBarSection(),
              const SizedBox(height: 24,),

              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Container(
                  height: 46,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.white,
                  ),
                  child:  TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: const BoxDecoration(
                      color: LightColors.primary,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    splashBorderRadius: BorderRadius.circular(16),
                    onTap: (index) {
                      setState(() {
                        _selectedTab = index;
                      });
                    },
                    tabs: [
                      tabItem1('Mening amaliyotlarim', _selectedTab == 0),
                      tabItem2('Kartalarim', _selectedTab == 1),
                    ],
                  ),
                )
              ),

              const SizedBox(height: 15,),

              const Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    HistoryTab(),
                    MyCardsTab()
                  ],
                )
              )
            ]
          )
        ),
      ),
    );
  }



  Widget tabItem2(String title, bool isActive) {
    return Center(
      child: MediumText(
        text: title,
        fontSize: 16,
        color: isActive ? Colors.white : Colors.grey,
      ),
    );
  }

  Widget tabItem1(String title, bool isActive) {
    return Center(
      child: MediumText(
        text: title,
        fontSize: 12,
        color: isActive ? Colors.white : Colors.black,
      ),
    );
  }
  
  Widget appBarSection() {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.arrow_left,
            color: Colors.black,
            size: 26,
          ),

          const SizedBox(width: 24,),

          const SemiBoldText(
            text: 'Monitoring',
            height: .1,
            fontSize: 18,
          ),

          const Spacer(),

          Image.asset(
            MyImages.filter,
            color: Colors.black,
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }
}