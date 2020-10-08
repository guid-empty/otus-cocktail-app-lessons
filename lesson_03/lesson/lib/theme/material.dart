import 'package:flutter/material.dart';

class MaterialSamplePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: Text('AppBarTitle')),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text('headline6', style: Theme.of(context).textTheme.headline6),
          Text('subtitle1', style: Theme.of(context).textTheme.subtitle1),
          Text('bodyText1', style: Theme.of(context).textTheme.bodyText1),
          Text('caption', style: Theme.of(context).textTheme.caption),
          Text('overline', style: Theme.of(context).textTheme.overline),
          FlatButton(child: Text('FlatButton'), onPressed: () {}),
          RaisedButton(child: Text('RaisedButton'), onPressed: () {}),
          OutlineButton(child: Text('OutlineButton'), onPressed: () {}),
        ]),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}),
    );
  }
}

ThemeData get materialSampleThemeData => ThemeData(
    appBarTheme: AppBarTheme(color: Colors.green),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.blue),
    accentColor: Colors.red,
    primaryColor: Colors.blue,
    buttonTheme: ButtonThemeData(buttonColor: Colors.green));
