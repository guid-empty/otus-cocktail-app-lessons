import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerPage'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(width: 100,height: 100),
          decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          child: Container(color: Colors.green),
        ),
      ),
    );
  }
}
