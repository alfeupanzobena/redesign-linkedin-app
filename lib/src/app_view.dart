import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/src/intro_view/intro_view.dart';
import 'package:linkedin_app_concept/src/utils/const_utils.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Linkedin App Concept',
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          backgroundColor: Colors.white,
          primaryColor: Colors.blue,
          fontFamily: FONT_MAIN,
          accentColor: Colors.white,
          bottomAppBarColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        debugShowCheckedModeBanner: false,
        home: IntroView());
  }
}
