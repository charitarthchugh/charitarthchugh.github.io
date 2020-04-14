import 'dart:ui';

//External Packages
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

//Internal packages
import 'package:charitarthchugh/views/scrollable_content.dart';
import 'package:charitarthchugh/components/responsive_widget_stateful.dart';
import '../components/responsive_widget.dart';
import 'Navigation/NavHeader.dart';
import 'Navigation/cstm_drawer.dart';
import 'Profile/home.dart';
import 'Profile/about_me.dart';
import 'social.dart';

class LPage extends StatefulWidget {
  @override
  _LPageState createState() => new _LPageState();
}

class _LPageState extends State<LPage> {
 // final List<GlobalKey> itemKey = GlobalKey();

  @override
  void dispose() {
    super.dispose();
  }

  _LPageState({key: Key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
        ? AppBar(
      elevation: 0,
      backgroundColor: Color.fromRGBO(7, 13, 47, 1),
    ) : null,
    drawer:ResponsiveWidget.isSmallScreen(context)
    ? CstmDrawer()
        : null, //No Drawer for large screens ,
    body: new Container(
      width: MediaQuery.of(context).size.width,
      child: null,//TEMP
      decoration: BoxDecoration(
         color: Color.fromRGBO(7, 13, 47, 1),
         image: DecorationImage(
         image: AssetImage('images/stars-bg.png',)),)

    ));
    /*new ResponsiveWidgetStateful(
      largeScreen: new Scaffold(
        backgroundColor: Colors.black38,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(7, 13, 47, 1),
        )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? CstmDrawer()
            : null, //No Drawer for large screens
        body: new Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(7, 13, 47, 1),
            image: DecorationImage(
                image: AssetImage(
                  'images/stars-bg.png',
                )),
          ),
          child: new ResponsiveWidgetStateful(
            largeScreen: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(),

                ]),
          ),
        ),
      ),
    );*/
  }
}