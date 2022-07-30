import 'package:aviv_lerning_full_power/common/app_bar.dart';
import 'package:flutter/material.dart';

class newPage extends StatefulWidget {
  final List articles;

  const newPage(this.articles, {Key? key}) : super(key: key);

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
  print('widget.articles.length ${widget.articles.length}');

    return Scaffold(
      appBar: myAppBarX(),
      body: ListView.builder(
        itemCount: widget.articles.length,
        itemBuilder: (context, i) {
          var title = widget.articles[i]["title"];
          print('$i: ${title}');
          return InkWell(
            splashColor: Colors.green.withOpacity(0.12),
            onTap: () => print('וואו - $title'),
            child: Card(
              child: ListTile(
                title: Text("\n" + title),
              ),
            ),
          );
        },
      ),
    );
  }
}
