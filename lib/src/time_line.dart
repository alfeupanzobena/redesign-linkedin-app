import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_app_concept/src/home_page.dart';
import 'package:linkedin_app_concept/src/notification_page.dart';
import 'package:linkedin_app_concept/src/profile_page.dart';
import 'package:linkedin_app_concept/src/recomendation_page.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  late PageController pageController;
  int getPageIndex = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  whenPageChanges(int pageIndex) {
    setState(() {
      this.getPageIndex = pageIndex;
    });
  }

  onTapChangePage(pageIndex) {
    pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: PageView(
        children: <Widget>[
          HomePage(),
          ProfilePage(),
          RecomendationPage(),
          NotificationPage(),
        ],
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: getPageIndex,
          onTap: onTapChangePage,
          backgroundColor: Colors.white,
          activeColor: Colors.blue.shade900,
          inactiveColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/imgs/Grupo16440.svg",
                height: 20,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/imgs/brand-awareness.svg",
                height: 20,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/imgs/Grupo16450.svg",
                height: 20,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/imgs/Grupo16451.svg",
                height: 20,
              ),
            ),
          ]),
    );
  }
}
