import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';

class HeaderContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final imageCocktail = Image.asset('assets/images/Rectangle7.png',
        fit: BoxFit.cover);
    final iconBack = Icon(Icons.arrow_back, color:Colors.white);
    final iconOpenImage = Icon(Icons.open_in_new, color:Colors.white);

    return Container(
      color: Colors.black,
      height: 343,
      child: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.clip,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(14, 13, 19, 0), Color(0xFF0E0D13)],
                    stops: [0.44, 0.94])
            ),
            child:imageCocktail ,
          ),
          Positioned(
            top: 58,
            left: 28,
            width: 16,
            height: 16,
            child: iconBack,
          ),
          Positioned(
            top: 57,
            right: 19,
            width: 18,
            height: 18,
            child: iconOpenImage,
          ),
        ],
      ),
    );
  }
}

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderContainer(),
            Container(
              color: Color(0xFF1A1927),
              padding: EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container (
                    child: Stack(
                      children: [
                        _favorite(this.cocktail.isFavourite),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _titleContainer(this.cocktail.name),
                            _idContainer (this.cocktail.id),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container (
                    child: Column (
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _styleSubTitle('Категория коктейля'),
                        _styleTitle(this.cocktail.category.name),
                        _styleSubTitle('Тип коктейля'),
                        _styleTitle(this.cocktail.cocktailType.name),
                        _styleSubTitle('Тип стекла'),
                        _styleTitle(this.cocktail.glassType.name),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
              child: Column (
                children: [
                  _titleIngredients('Ингридиенты:'),
                  _listIngredient(),
                ],
              ),
            ),
            Container(
              color: Color(0xFF201F2C),
              padding: EdgeInsets.only(left: 32.0, top: 24.0, right: 26.0, bottom: 40.0),
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _titleInstruction('Инструкция для приготовления'),
                    _instruction(this.cocktail.instruction),
                  ],
                ),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 24.0),
              child: _rating(),
            ),
          ],
        )
      )
    );
    /// TODO: Сделать верстку экрана "Карточка коктейля" по модели Cocktail cocktail
    /// Ссылка на макет
    /// https://www.figma.com/file/d2JJUBFu7Dg0HOV30XG7Z4/OTUS-FLUTTER.-%D0%A3%D1%80%D0%BE%D0%BA-3-%D0%94%D0%97?node-id=20%3A590
    ///для того что бы весь контент поместился, необходимо использовать SingleChildScrollView()
    ///
    ///
  }
  Widget _styleName (titleText) => Text(titleText,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  );

  Widget _titleContainer (titleText) => Container(
    child: _styleName(titleText),
    margin: EdgeInsets.only(bottom: 10.0),
  );

  Widget _idContainer (id) => Container (
    child: _styleId ('id:' + id),
    margin: EdgeInsets.only(bottom: 20.0),
  );

  Widget _favorite (bool favorite) => Positioned(
    top: 0,
    right: 2,
    child:
      (favorite) ? Icon(Icons.favorite, color:Colors.white) : Icon(Icons.favorite_outline, color:Colors.white) ,
  );

  Widget _styleId (id) => Text(id,
    textAlign: TextAlign.left,
    style: TextStyle(
      fontSize: 13,
      color: Color(0xFF848396),
    ),
  );

  Widget _styleSubTitle (subtitle) => Container (
        child: Text(subtitle,
          style: TextStyle(
            fontSize: 14,
            height: 1.2,
            color: Color(0xFFEAEAEA),
          ),
        ),
      );

  Widget _styleTitle (titleText) => Container (
        child: Text(titleText,
          style: TextStyle(
            fontSize: 15,
            height: 1.2,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration (
          color: Color(0xFF15151C),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        margin: EdgeInsets.only(top: 8.0, bottom: 18.0),
        padding: EdgeInsets.only(left: 16.0, top: 6.0, right: 16.0, bottom: 6.0),
      );

  Widget _titleIngredients (titleText) => Container (
          child: Center(
            child:Text(titleText,
              style: TextStyle(
                fontSize: 16,
                height: 1.2,
                color: Color(0xFFB1AFC6),
              ),
            ),
          ),
          padding: EdgeInsets.only(bottom: 24.0),
       );

  Widget _listIngredient () => Column(
    children: ingredientList(),
  );

  List<Widget> ingredientList() {
    List<Widget> resultList = [];
        for (IngredientDefinition ingredient in this.cocktail.ingredients) {
          resultList.add(
              _itemIngrediens(ingredient.ingredientName, ingredient.measure));
        }
        return resultList;
  }

  Widget _itemIngrediens(String ingredient, String count) => Container(
    padding: EdgeInsets.only(left: 32.0, right: 32.0),
    margin: EdgeInsets.only(bottom: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ingredient(ingredient),
        _ingredientCount(count),
      ],
    ),
  );
  Widget _ingredient(ingredient) => Container(
      child: Text(ingredient,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            fontSize: 14.0,
            height: 1.2,
            fontWeight: FontWeight.normal,
          ))
  );
  Widget _ingredientCount(count) => Container(
      child: Text(count,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ))
  );

  Widget _instruction(instruction) => Container(
    child: Text(instruction, style: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      height: 1.2,
      fontWeight: FontWeight.w400,
      )
    ),
  );

  Widget _titleInstruction (titleText) => Container (
          child:Text(titleText,
            style: TextStyle(
              fontSize: 16,
              height: 1.2,
              color: Color(0xFFB1AFC6),
            ),
          ),
        margin: EdgeInsets.only(bottom: 24.0),
      );

  Widget _rating() => Container(
    child: Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _star(Colors.white),
        _star(Colors.white),
        _star(Colors.white),
        _star(Colors.black),
        _star(Colors.black),
      ],
    ),
  );

  Widget _star(color) => Container(
    width: 48,
    height: 48,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Color(0xFF2A293A),
    ),
    child: Icon(Icons.star, color: color, size: 32),
  );
  }

