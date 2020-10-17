import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/src/screens/circles.screen.dart';
import 'package:startup_namer/src/screens/information.screen.dart';
import 'package:startup_namer/src/screens/offering.screen.dart';
import 'package:startup_namer/src/screens/profile.screen.dart';
import 'package:startup_namer/src/screens/transaction.screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final GlobalKey<NavigatorState> offeringNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'offeringNavKey');

  final GlobalKey<NavigatorState> transactionTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'transactionTabNavKey');

  final GlobalKey<NavigatorState> informationTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'informationTabNavKey');

  final GlobalKey<NavigatorState> circlesTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'circlesTabNavKey');

  final GlobalKey<NavigatorState> profileTabNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'profileTabNavKey');

  List<BottomNavigationBarItem> _getTabBarItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.code),
        label: '報價',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calculate),
        label: '交易',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.article),
        label: '資訊',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.cloud),
        label: '圈子',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '我的',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: _getTabBarItems(),
          backgroundColor: Colors.black,
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                navigatorKey: offeringNavKey,
                builder: (BuildContext context) => OfferingScreen(),
              );
              break;
            case 1:
              return CupertinoTabView(
                navigatorKey: transactionTabNavKey,
                builder: (BuildContext context) => TransactionScreen(),
              );
              break;
            case 2:
              return CupertinoTabView(
                navigatorKey: informationTabNavKey,
                builder: (BuildContext context) => InformationScreen(),
              );
              break;
            case 3:
              return CupertinoTabView(
                navigatorKey: circlesTabNavKey,
                builder: (BuildContext context) => CirclesScreen(),
              );
              break;
            case 4:
              return CupertinoTabView(
                navigatorKey: profileTabNavKey,
                builder: (BuildContext context) => ProfileScreen(),
              );
              break;
            default:
              throw 'Unknown tab index';
              break;
          }
        },
      ),
    );
  }
}
