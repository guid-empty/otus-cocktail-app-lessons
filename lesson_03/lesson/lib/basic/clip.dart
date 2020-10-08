import 'package:flutter/material.dart';

class ClipSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: ClipOval(
        child: Image.network(
            "https://naekvatoremsk.ru/sites/default/files/2_1718.jpg"),
      ),
    );
  }
}

// class TriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(size.width, 0.0);
//     path.lineTo(size.width / 2, size.height);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(TriangleClipper oldClipper) => false;
// }
