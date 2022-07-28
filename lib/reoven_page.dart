import 'package:flutter/material.dart';
import 'common/app_bar.dart';
import 'common/app_card.dart';

class reovenPage extends StatefulWidget {
  const reovenPage({Key? key}) : super(key: key);

  @override
  _reovenPageState createState() => _reovenPageState();
}

class _reovenPageState extends State<reovenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
