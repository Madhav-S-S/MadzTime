import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:madz_time/pages/choose_location.dart';
import 'package:madz_time/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  }
