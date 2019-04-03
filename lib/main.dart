import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                'assets/luxembourg.svg',
                height: 400,
                width: 400,
                semanticsLabel: 'map',
                //color: Colors.white,
                placeholderBuilder: (BuildContext context) => new Container(
                    padding: const EdgeInsets.all(30.0),
                    child: const CircularProgressIndicator()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
