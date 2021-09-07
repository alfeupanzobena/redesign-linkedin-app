import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/src/time_line.dart';
import 'package:linkedin_app_concept/src/utils/const_utils.dart';
import 'package:linkedin_app_concept/src/utils/navigator_util.dart';

class IntroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10), () {
      GoTo.pageWithoutReturn(context, page: TimeLine());
    });
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            IMG_BACKGROUND,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
