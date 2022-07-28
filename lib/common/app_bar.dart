import 'package:flutter/material.dart';


// STF - עמוד מלא
class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}


class _MyAppBarState extends State<MyAppBar> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child:
      Text("שלום ובהצלחה",
        style: TextStyle(
          fontSize: 40.0,
          fontFamily: 'sheleg',),)),
    );
  }
}

class Wha extends StatelessWidget {
  const Wha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


AppBar myAppBarX(){
  return AppBar(
    title: Center(child:
    Text("שלום ובהצלחה",
      style: TextStyle(
        fontSize: 40.0,
        fontFamily: 'sheleg',),)),
  );
}

