import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  final icons = List.generate(5, (index) => Icon(Icons.star));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: icons.map((e) => _wrapIcon(e)).toList(),
        //children: icons,
      ),
    );
  }

  Widget _wrapIcon(Widget icon) => Container(
      color: Colors.yellow,
      padding: const EdgeInsets.all(8),child: icon);
}




//  final icons = [
//    Icon(Icons.star),
//    Spacer(flex: 1),
//    Icon(Icons.star),
//    Spacer(flex: 2),
//    Icon(Icons.star),
//  ];


