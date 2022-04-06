import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 0; i <= 15; i++)
  //     widgets.add(Text(
  //       "data ke" + i.toString(),
  //       style: TextStyle(fontSize: 25),
  //     ));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                  child: Text("Tambah"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("data ke" + counter.toString()));
                      counter++;
                    });
                  }),
              RaisedButton(
                  child: Text("Kurang"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  })
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ] //untuk data banyak pada list tidak bisa ditulis manual
            ),
      ),
    );
  }
}
