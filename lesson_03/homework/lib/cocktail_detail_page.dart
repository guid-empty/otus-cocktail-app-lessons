import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';
import 'package:homework/stars_model.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF0E0D13),
              const Color(0xFF0E0D13),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, left: 28, right: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/Vector1.png'),
                  Image.asset('images/heart.png'),
                ],
              ),
            ),
            Container(

             child: Image.asset(
               'images/Rectangle_7.png',
             ),
            ),
            buildCocktailType(),
            Container(
              margin: EdgeInsets.only(top: 24, bottom: 11),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Ингридиенты:',
                  style: TextStyle(color: Color(0xFFB1AFC6), fontSize: 16),
                ),
              ),
            ),
            buildIngridients(),
            buildInsruction(),
            buildCenter(),
          ],
        ),
      ),
    );
  }

  Column buildIngridients() {
    return Column(
            children: cocktail.ingredients
                .map(
                  (ingredient) => Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 32, bottom: 16),
                          child: Text(
                            ingredient.ingredientName,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 115, bottom: 16),
                          child: Text(
                            ingredient.measure,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),

          );
  }

  Container buildCocktailType() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1A1927),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 32, top: 33),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    cocktail.name,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 170, top: 33),
                child: Image.asset('images/heart.png'),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 32, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'id:${cocktail.id}',
                style: TextStyle(color: Color(0xff848396), fontSize: 13),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 32, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Категория коктеля',
                style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 14),
              ),
            ),
          ),
          Container(

            decoration: BoxDecoration(
              color: Color(0xFF0E0D13),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.only(right: 272, top: 14),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                cocktail.category.name,
                style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 32, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Тип коктеля',
                style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 14),
              ),
            ),
          ),
          Container(

            decoration: BoxDecoration(
              color: Color(0xFF0E0D13),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.only(right: 245, top: 14),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                cocktail.cocktailType.value,
                style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 32, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Тип стекла',
                style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 14),
              ),
            ),
          ),
          Container(

            decoration: BoxDecoration(
              color: Color(0xFF0E0D13),
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.only(right: 276, top: 14, bottom: 24),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                cocktail.glassType.name,
                style: TextStyle(color: Color(0xFFEAEAEA), fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildInsruction() {
    return Container(
      height: 273,
      decoration: BoxDecoration(
        color: Color(0xFF201F2C),
      ),
      child: Column(
        children: [
          Container(
            child: Text(
              'Инструкция для приготовления:',
              style: TextStyle(color: Colors.white),
            ),
            padding: EdgeInsets.only(top: 24),
          ),
          Container(
            padding: EdgeInsets.only(left: 32, top: 24),
            child: Text(
              cocktail.instruction,
              style: TextStyle(
                color: Colors.white,
                wordSpacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Center buildCenter() {
    return Center(
      child: Container(

        padding: EdgeInsets.only(left: 34, right: 34),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stars(
              starImg: Image.asset('images/Star 1.png'),
            ),
            Stars(
              starImg: Image.asset('images/Star 1.png'),
            ),
            Stars(
              starImg: Image.asset('images/Star 1.png'),
            ),
            Stars(
              starImg: Image.asset('images/Star 2.png'),
            ),
            Stars(
              starImg: Image.asset('images/Star 2.png'),
            ),
          ],
        ),
      ),
    );
  }
}
