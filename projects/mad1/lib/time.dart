import 'package:flutter/material.dart';
import 'package:mad1/pages/home.dart';
import 'package:mad1/pages/loading.dart';
import 'package:mad1/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => Home(),
      '/location':(context) => ChooseLocation(),
    },
  ));
}
