import 'package:flutter/material.dart';

void main() {
  const String rootLevelTitle = 'So many levels!';
  runApp(
    RootLevelWidget(title: rootLevelTitle),
  );
}

class HelloWorldDecorationWidget extends StatelessWidget {
  final String title;

  const HelloWorldDecorationWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.lime),
        alignment: Alignment.center,
        child: HelloWorldTitleOnlyWidget(
          title: title,
        ),
      );
}

class HelloWorldTitleOnlyWidget extends StatelessWidget {
  final String title;

  HelloWorldTitleOnlyWidget({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        title,
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black, fontSize: 40),
      );
}

class RootLevelWidget extends StatelessWidget {
  final String title;

  const RootLevelWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => SecondLevelWidget(
        title: this.title,
      );
}

class SecondLevelWidget extends StatelessWidget {
  final String title;

  const SecondLevelWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => HelloWorldDecorationWidget(
        title: this.title,
      );
}
