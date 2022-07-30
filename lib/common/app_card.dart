import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
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
                 print('Start');
                // var respone = Future.delayed(Duration(seconds: 1), () => 'B');
                 // print(await respone);
                 // print(respone.then((value) => print(value)));
                 // print('C');

                //TODO לשאול את המאסטר איך לעשות את זה אישי
                // FirebaseAuth.instance.signOut();
                debugPrint("לחוץ");

                // bool, double, list, String, Map
                // List<bool>? myList = [false, true];
                // Map<String, dynamic> someThing = {
                //   "someThing1": {
                //     'key1': 10,
                //     'key2': 'val2',
                //     'key3': {},
                //   },
                //   "someThing2": {
                //     'key1': 'val1',
                //     'key2': 'val2',
                //     'key3': '',
                //   }
                // };
                //
                // someThing['someThing2']['key4'] = {
                //   'someThing3': {'key4': 'val4'},
                // };

              // print('someThing ${someThing}');

              var time = await getTime();
              log('time ${time}');


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

// Future<Map<String, dynamic>?> getTime() async {
Future<List?> getTime() async {
  print('Start getTime()');
// make the request
  http.Response response = await http.get(
    Uri.parse('https://www.google.com/search?q=google&animal=cat')) ;
  // Map<String, dynamic> data = jsonDecode(response.body);
  print('response DONE: ${response.body}');

  // if(data["status"] == "ok"){
  //   List _articles = data["articles"] ?? [];
  //
  //   return _articles;
  // }else{
  //   print("error on fetch api");
  // }


}
