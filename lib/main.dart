
import 'package:aviv_lerning_full_power/common/app_bar.dart';
import 'package:flutter/material.dart';
import 'reoven_page.dart';
import 'common/my_app_bar.dart';
import 'log_in_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: logInPage()
      // home: reovenPage()
    );
  }
}

