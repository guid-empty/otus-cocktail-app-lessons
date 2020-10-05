import 'package:flutter/material.dart';

final globalKey = GlobalKey<HelloWorldTitleOnlyWidgetState>(debugLabel: 'title key');

void main() {
  runApp(
    GestureDetector(
      onTap: () {
        globalKey.currentState.updateNewState();
      },
      child: RootLevelWidget(),
    ),
  );
}

class HelloWorldDecorationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.lime),
        alignment: Alignment.center,
        child: HelloWorldTitleOnlyWidget(key: globalKey),
      );
}

class HelloWorldTitleOnlyWidget extends StatefulWidget {
  HelloWorldTitleOnlyWidget({Key key}) : super(key: key);

  @override
  HelloWorldTitleOnlyWidgetState createState() => HelloWorldTitleOnlyWidgetState();
}

class RootLevelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SecondLevelWidget();
}

class SecondLevelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => HelloWorldDecorationWidget();
}

class HelloWorldTitleOnlyWidgetState extends State<HelloWorldTitleOnlyWidget> {
  String _title;

  HelloWorldTitleOnlyWidgetState() : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
      ),
      textAlign: TextAlign.center,
    );
  }

  @override
  void initState() {
    super.initState();
    _title = DateTime.now().toString();
  }

  void updateNewState() {
    setState(() {
      _title = DateTime.now().toString();
    });
  }
}
