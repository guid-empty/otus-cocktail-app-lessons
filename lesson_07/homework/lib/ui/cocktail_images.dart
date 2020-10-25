import 'package:flutter/cupertino.dart';

class CocktailImages extends StatelessWidget {
  final Image img;

  CocktailImages({@required this.img});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: img,
    );
  }
}
