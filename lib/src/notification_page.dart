import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/src/utils/const_utils.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Noticações",
          style: TextStyle(
              color: Colors.black,
              fontFamily: FONT_MAIN,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
