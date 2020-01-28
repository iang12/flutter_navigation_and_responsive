import 'package:flutter/material.dart';
import 'package:navigations/src/home/HomeController.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: StreamBuilder<int>(
      initialData: 0,
      stream: HomeController.of(context).drawerChangeOutput,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: <Widget>[
            DrawerHeader(),
            ListTile(
                selected: snapshot.data == 0,
                title: Text(
                  'Ínicio',
                ),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(0);
                }),
            ListTile(
                selected: snapshot.data == 1,
                title: Text('Favoritos'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(1);
                }),
            ListTile(
                selected: snapshot.data == 2,
                title: Text('Conta'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(2);
                }),
            ListTile(
                selected: snapshot.data == 3,
                title: Text('Responsividade'),
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                  HomeController.of(context).drawerChangeInput.add(3);
                }),
          ],
        );
      },
    ));
  }
}
