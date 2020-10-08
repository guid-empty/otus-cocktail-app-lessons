import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Table(
        border: TableBorder.all(color: Colors.black),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
        ]);
  }
}


class Rect extends Container {
  Rect(Color color)
      : super(color: color);
}