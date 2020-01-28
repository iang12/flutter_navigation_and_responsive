import 'package:flutter/material.dart';
import 'package:navigations/src/home/HomeController.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:RaisedButton(
        onPressed: (){
          HomeController.of(context).drawerChangeInput.add(1);
        },
        child: Text('d'),
      ),
    );
  }
}