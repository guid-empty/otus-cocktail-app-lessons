import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextSamplesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Simple text'),
      RichText(
          text: TextSpan(children: [
        TextSpan(text: 'Rich', style: TextStyle(color: Colors.black)),
        TextSpan(text: 'Text', style: TextStyle(color: Colors.red)),
      ])),
    ]);
  }
}



// import 'package:flutter/material.dart';
// import 'dart:ui' as ui;
//
// class TextSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Simple text',
//             style: TextStyle(
//                 decoration: TextDecoration.lineThrough,
//                 decorationStyle: TextDecorationStyle.wavy,
//                 decorationColor: Colors.red,
//                 decorationThickness: 1,
//                 wordSpacing: 1.0,
//                 fontWeight: FontWeight.w700,
//                 // foreground: Paint()..color = Colors.black38,
//                 background: Paint()
//                   ..shader = ui.Gradient.radial(Offset(0, 0),20,
//                       [Colors.red, Colors.blue, Colors.grey], [0.1, 0.4, 1.0])
//                   ..strokeWidth = 4.0),
//           ),
//           Text.rich(TextSpan(children: [
//             TextSpan(text: 'Text '),
//             TextSpan(text: 'Span', style: TextStyle(color: Colors.green)),
//           ])),
//         ],
//       ),
//     );
//   }
// }

