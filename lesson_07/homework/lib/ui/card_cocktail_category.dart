import 'package:cocktail/core/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCoctailCategory extends StatelessWidget {
  CardCoctailCategory(this.cocktailDefinition, {Key key, this.cocktailCategory}) : super(key: key);

  final CocktailCategory cocktailCategory;
  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Image.network(cocktailDefinition.drinkThumbUrl,
              fit: BoxFit.cover, height: 230, width: 170),
          Positioned(
            top: 170,
            left: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  cocktailDefinition.name,
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                Chip(
                  backgroundColor: Color(0xFF15151C),
                  label: Text(
                    cocktailDefinition.id,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
