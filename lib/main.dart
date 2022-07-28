
// import 'package:aviv_lerning_full_power/common/app_bar.dart';
import 'package:aviv_lerning_full_power/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'reoven_page.dart';
// import 'common/my_app_bar.dart';
import 'log_in_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: logInPage()
      home: MainPage()
      // home: reovenPage()
    );
  }
}

//TODO Podfile, platform :ios, '9.0'