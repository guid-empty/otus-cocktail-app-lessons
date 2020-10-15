import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final Widget starImg;

  Stars({@required this.starImg});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey,),
      child: starImg,
    );

  }

}
