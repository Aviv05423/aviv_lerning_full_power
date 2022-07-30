import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  final Widget child;
  final Color boxShadowColor;

  AppCard({Key? key, required this.child, this.boxShadowColor = Colors.teal})
      : super(key: key);

  @override
  _AppCardState createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.all(30.0),
          color: Colors.yellow,
          child: Material(
            shadowColor: Colors.teal,
            elevation: 10,
            color: Colors.yellow,
            child: InkWell(
              splashColor: Colors.green,
              onTap: () async {
                 // print('A');
                // var respone = Future.delayed(Duration(seconds: 1), () => 'B');
                 // print(await respone);
                 // print(respone.then((value) => print(value)));
                 // print('C');

                //TODO לשאול את המאסטר איך לעשות את זה אישי
                // FirebaseAuth.instance.signOut();
                debugPrint("לחוץ");

                // bool, double, list, String, Map
                List<bool>? myList = [false, true];
                Map<String, dynamic> someThing = {
                  "someThing1": {
                    'key1': 10,
                    'key2': 'val2',
                    'key3': {},
                  },
                  "someThing2": {
                    'key1': 'val1',
                    'key2': 'val2',
                    'key3': '',
                  }
                };

                someThing['someThing2']['key4'] = {
                  'someThing3': {'key4': 'val4'},
                };

              print('someThing ${someThing}');



            // void getTime () async
            //   // make the request
            // Response response = await get('http://worldtimeapi. org/api/timezone/Eu rope/London ') ;
            // Map data = jsonDecode ( response . body);
            //    //print (data) ;
            //   }


























              },
              child: Container(
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  // color: Colors.yellow,
                  border: Border.all(color: Colors.deepOrange, width: 4),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: widget.boxShadowColor,// ?? Colors.teal,
                  //     offset: Offset(10.0, 5.0)
                  //   )
                  // ]
                ),
                child: widget.child,
              ),
            ),
          ),
        )
      ],
    );
  }
}
