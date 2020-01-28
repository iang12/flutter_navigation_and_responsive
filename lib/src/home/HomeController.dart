import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class HomeController extends InheritedWidget {
  final BehaviorSubject<int> _streamController = BehaviorSubject.seeded(0);
  Sink<int> get drawerChangeInput => _streamController.sink;
  Stream<int> get drawerChangeOutput => _streamController.stream;

  static HomeController of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(HomeController)
        as HomeController;
  }

  final Widget child;
  HomeController({this.child}) : super(child: child);
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != null;
  }
}
