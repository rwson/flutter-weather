import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/address.dart';

void main ()=> runApp(new FreshWeather());

class FreshWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomeState(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new HomeState(),
        '/address': (BuildContext context) => new Address()
      }
    );
  }
}

