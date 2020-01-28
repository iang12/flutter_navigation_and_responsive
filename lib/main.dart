import 'package:flutter/material.dart';
import 'package:navigations/src/home/HomeController.dart';
import 'package:navigations/src/home/HomeWidget.dart';

void main() {
  runApp(MaterialApp(home: HomeController(child: HomeWidget())));
}
