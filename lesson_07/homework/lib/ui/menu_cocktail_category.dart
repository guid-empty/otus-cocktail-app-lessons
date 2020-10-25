import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCocktailCategory extends StatelessWidget {
  final String nameCocktailCategory;
  final Function onPressed;

  MenuCocktailCategory({@required this.nameCocktailCategory, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: const StadiumBorder(),
      textColor: Colors.black,
      color: Color(0xFF201F2C),
      splashColor: Color(0xFF3B3953),
      disabledColor: Colors.grey,
      disabledTextColor: Colors.white,
      child: Text(
        nameCocktailCategory,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
