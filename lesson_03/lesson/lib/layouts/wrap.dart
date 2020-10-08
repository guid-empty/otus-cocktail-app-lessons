import 'package:flutter/material.dart';


class WrapPage extends StatelessWidget {
  final icons = List<Widget>.generate(
      23,
      (index) => Container(
          color: Colors.yellow,
          padding: const EdgeInsets.all(8),
          child: Icon(Icons.star)));

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        verticalDirection: VerticalDirection.down,
        spacing: 10.0,
        runSpacing: 10.0,
        children: icons);
  }
}


