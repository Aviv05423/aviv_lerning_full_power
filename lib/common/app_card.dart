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
              onTap: () {
                debugPrint("לחוץ");
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