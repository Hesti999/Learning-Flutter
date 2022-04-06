import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Image Widget"),
          ),
          body: Center(
            child: Container(
                color: Colors.black,
                width: 500,
                height: 500,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      "https://www.allkpop.com/upload/2022/02/content/272339/1646023182-img-20220228-123917.jpg"),
                  fit: BoxFit.contain,
                  // repeat: ImageRepeat.repeat,
                )),
          )),
    );
  }
}
