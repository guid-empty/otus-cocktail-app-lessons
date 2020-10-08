import 'package:flutter/material.dart';

class ConstrainsSample extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Container(color: Colors.red,width: 100,height: 100);
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Stack(
          fit: StackFit.loose,
          overflow: Overflow.visible,
          children: [
            Container(color: Colors.red),
            Positioned(
                top: 0,
                right: -100,
                child: Container(color: Colors.green,height: 24,width: 24,)),
          ],
        ),
      ),
    );
  }

}
