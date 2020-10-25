// TODO: Сделать экран Фильтр по категории
// Ссылка на макет: https://www.figma.com/file/Uzn5jHYiiFgacPCWNhwbc5/%D0%9A%D0%BE%D0%BA%D1%82%D0%B5%D0%B9%D0%BB%D0%B8-Copy?node-id=20%3A590

// 1. Фильты - это CocktailCategory, получить все значения можно через CocktailCategory.values
// 2. Поиск по фильтру делаем через AsyncCocktailRepository().fetchCocktailsByCocktailCategory(CocktailCategory)
// 3. Используем StreamBuilder/FutureBuilder
// 4. По нажатию на категорию на странице должны обновится список коктейлей. Выбранная категория подсвечивается как в дизайне. По умолчанию выбрана первая категория.
// 5. Поиск по названию пока что не делаем!
// 6. Должны отображаться ошибки и состояние загрузки.
// 7. Для скролла используем CustomScrollView
// 8. Делаем fork от репозитория и сдаем через PR
// 9. Помним про декомпозицию кода по методам и классам.

// ignore: avoid_web_libraries_in_flutter

import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/cocktail_images.dart';
import 'package:cocktail/ui/error_page.dart';
import 'package:cocktail/ui/primary_layer.dart';
import 'package:cocktail/ui/shaker_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

import 'menu_cocktail_category.dart';

class CocktailsFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CocktailCategory cocktailCategory;
    return Scaffold(
      backgroundColor: Color(0xFF0E0D13),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(
                    nameCocktailCategory: 'null',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ErrorPage()));
                      debugPrint(' ');
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'nullllllllllll',
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShakerPage()));
                    debugPrint(' ');
                  },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                  MenuCocktailCategory(nameCocktailCategory: 'null',
                    onPressed: () {
                      debugPrint(' ');
                    },),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Stack(
                alignment: Alignment.topCenter,
                overflow: Overflow.clip,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CocktailImages(
                        img: Image.asset(
                          'image/Mohito.png',
                        ),
                      ),
                      CocktailImages(
                        img: Image.asset(
                          'image/FreshArbuz.png',
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 47,
                    left: 50,
                    child: Text(
                      'Text',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Positioned(
                    bottom: 47,
                    right: 145,
                    child: Text(
                      'Text',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Positioned(
                    bottom: -5.0,
                    right: 108,
                    child: Chip(
                      backgroundColor: Color(0xFF15151C),
                      label: Text(
                        'Id cocktail',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -5.0,
                    left: 45,
                    child: Chip(
                      backgroundColor: Color(0xFF15151C),
                      label: Text(
                        'Id cocktail',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// margin: EdgeInsets.only(top: 24),
// child: CocktailImages(
// img: Image.asset(
// 'image/Mohito.png',
// width: 170,
// height: 215,
// fit: BoxFit.fill,
// ),
// ),
// ),
// Container(
// margin: EdgeInsets.only(top: 24),
// child: CocktailImages(
// img: Image.asset(
// 'image/FreshArbuz.png',
// width: 170,
// height: 215,
// fit: BoxFit.fill,
// ),
// ),
// ),
// Row(
// children: [
// Text(
// 'dddkdcdc', style: TextStyle(color: Colors.white),
// ),
// ],
// )
// ],
// ),
