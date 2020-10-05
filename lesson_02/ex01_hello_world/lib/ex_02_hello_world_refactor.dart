import 'package:flutter/material.dart';

void main() {
  runApp(
    MyOwnWidget(),
  );
}

class MyOwnWidget extends StatelessWidget {
  const MyOwnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      alignment: Alignment.center,
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black, fontSize: 40),
      ),
    );
  }
}

