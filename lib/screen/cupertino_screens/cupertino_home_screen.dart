import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_store/screen/cupertino_screens/cupertino_app_screen.dart';
import 'package:platform_converter_store/screen/cupertino_screens/cupertino_game_screen.dart';
import 'package:platform_converter_store/screen/cupertino_screens/cupertino_search_screen.dart';
import 'package:platform_converter_store/screen/cupertino_screens/cupertino_today_screen.dart';
import 'package:platform_converter_store/screen/cupertino_screens/cupertino_update_screen.dart';
import '../../main.dart';
import '../../uttlis/global.dart';

class CupertinoHomeScreen extends StatefulWidget {
  const CupertinoHomeScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoHomeScreen> createState() => _CupertinoHomeScreenState();
}

class _CupertinoHomeScreenState extends State<CupertinoHomeScreen>
    with SingleTickerProviderStateMixin {
  List data = [
    const CupertinoTodayScreen(),
    const CupertinoGameScreen(),
    const CupertinoAppScreen(),
    const CupertinoUpdateScreen(),
    const CupertinoSearchScreen(),
  ];

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: const Border(),
        trailing: CupertinoSwitch(
          activeColor: CupertinoColors.systemBlue.withOpacity(0.7),
          value: Global.isIos,
          onChanged: (val) {
            Global.isIos = val;
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
                    (route) => false);
          },
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: tabController.index,
          onTap: (val) {
            tabController.index = val;
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.today),
              icon: Icon(CupertinoIcons.today_fill),
              label: "Today",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.rocket_fill),
              icon: Icon(CupertinoIcons.rocket),
              label: "Games",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.app_fill),
              icon: Icon(CupertinoIcons.app),
              label: "Apps",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.arrow_down_circle_fill),
              icon: Icon(CupertinoIcons.arrow_down_circle),
              label: "Updates",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.search_circle_fill),
              icon: Icon(CupertinoIcons.search_circle),
              label: "Search",
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return data[index];
            },
          );
        },
      ),
    );
  }
}