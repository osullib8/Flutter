import 'package:flutter/material.dart';
import 'Pages/home.dart';
import 'Pages/loading.dart';
import 'Pages/location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => Location(),
  },
));

