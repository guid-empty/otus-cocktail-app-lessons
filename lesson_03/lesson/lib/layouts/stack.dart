import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        color: Colors.grey,
        child: Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.clip,
          fit: StackFit.expand,
          children: [
            Image.network(
                'https://klike.net/uploads/posts/2019-11/1574605225_22.jpg',
                fit: BoxFit.cover),
            Positioned(
                top: 16, right: 16, child: Icon(Icons.close, color: Colors.white)),
            Align(
                alignment: Alignment(0.5, 0.9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5, (index) => Icon(Icons.star, color: Colors.white)),
                ))
          ],
        ),
      ),
    );
  }
}


