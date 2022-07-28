import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'common/app_bar.dart';
import 'common/app_card.dart';

class reovenPage extends StatefulWidget {
  const reovenPage({Key? key}) : super(key: key);

  @override
  _reovenPageState createState() => _reovenPageState();
}

class _reovenPageState extends State<reovenPage> {
  final user = FirebaseAuth.instance.currentUser!;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Center(child: Text("!" + user.email! + " היי לך")),
      ),
      appBar: myAppBarX(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              children: [
                AppCard(
                  child: Column(
                    children: [
                      Text(
                        "ראובן",
                        style: TextStyle(fontSize: 60, fontFamily: "brakim"),
                      ),
                      Icon(Icons.all_inclusive_outlined,
                          size: 50, color: Colors.black)
                    ],
                  ),
                ),
                AppCard(
                  child: Column(
                    children: [
                      Text(
                        "חוהבןיוסף",
                        style: TextStyle(
                            fontSize: 40, fontFamily: 'damregular-regular'),
                      ),
                      Text(
                        "🏳️‍⚧",
                        style: TextStyle(
                            fontSize: 40, fontFamily: 'damregular-regular'),
                      )
                    ],
                  ),
                ),
                AppCard(
                  // buttonAction:,
                    child: Column(
                  children: [
                    Text(
                      "סבתל'ה",
                      style: TextStyle(fontSize: 40, fontFamily: 'tuganim'),
                    ),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
