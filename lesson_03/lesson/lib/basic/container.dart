import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(16),
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          child: Image.asset('assets/images/sample.jpg'),
        ),
      ),
    );
  }
}
