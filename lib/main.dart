import 'package:flutter/material.dart';
import 'package:linkedin_app_concept/src/app_view.dart';
import 'package:linkedin_app_concept/src/utils/status_bar_color_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setStatusBarDark();
  runApp(AppView());
}
