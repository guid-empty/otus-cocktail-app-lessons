import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConstrainsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(color: Colors.green),
      Center(child: Container(color: Colors.red)),
      Center(
          child: Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      )),
    ]);
  }
}
