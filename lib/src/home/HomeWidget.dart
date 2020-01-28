import 'package:flutter/material.dart';
import 'package:navigations/src/home/HomeController.dart';
import 'package:navigations/src/home/pages/ContaWidget.dart';
import 'package:navigations/src/home/pages/FavoritosPage.dart';
import 'package:navigations/src/home/pages/InicioPage.dart';
import 'package:navigations/src/home/pages/ResponsividadeWidget.dart';
import 'package:navigations/src/home/widgets/CustomDrawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var pages = <Widget>[InicioPage(), FavoritoPage(), ContaPage(),ResponsividadeWidget()];
  // int indexPage = 0;
  GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    print('rebuldado');
    return Scaffold(
        appBar: AppBar(
          title: Text('Navegação'),
        ),
        drawer: CustomDrawer(),
        body: StreamBuilder<int>(
          stream: HomeController.of(context).drawerChangeOutput,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return pages[snapshot.data];
          },
        ));
  }
}
