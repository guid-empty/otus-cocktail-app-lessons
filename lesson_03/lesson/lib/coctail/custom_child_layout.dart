import 'dart:math';

import 'package:flutter/material.dart';

class FlowSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlowMenu(),
      ),
    );
  }
}

class FlowMenu extends StatefulWidget {
  @override
  _FlowMenuState createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.network(
              'https://mircocktails.ru/wp-content/uploads/2019/02/Martini-Byanko-11-1.jpg',
              height: (screenHeight / 2) + 56,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0.0,
            left: 0.0,
            top: 200,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 16, left: 16, right: 16, bottom: 56.0 + 16.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(56),
                          topLeft: Radius.circular(56))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Text1', textAlign: TextAlign.center),
                      Text('Text1', textAlign: TextAlign.center),
                      Text('Text1', textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(56),
                            topLeft: Radius.circular(56))),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(56),
                            topLeft: Radius.circular(56))),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                        Text('Text1', textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
