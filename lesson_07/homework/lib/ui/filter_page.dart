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
import 'package:cocktail/ui/primary_layer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card_cocktail_category.dart';

class CocktailsFilterScreen extends StatefulWidget {
  @override
  _CocktailsFilterScreenState createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  List<CocktailDefinition> _coctailDefinish;
  final _categoryNotifier = ValueNotifier(CocktailCategory.values.first);
  CocktailDefinition indexx;

  @override
  Widget build(BuildContext context) {
    return PrimaryLayers(
      child: Column(

        children: [
          Container(
            height: 50,
            child: ValueListenableBuilder(
              valueListenable: _categoryNotifier,
              builder: (context, categor, c) => Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: CocktailCategory.values
                      .map(
                        (item) => Container(
                          margin: EdgeInsets.all(4),
                          child: ChoiceChip(
                            padding: EdgeInsets.all(10),
                            label: Text(item.value),
                            labelStyle: TextStyle(color: Colors.white, fontSize: 15),
                            backgroundColor: Color(0xFF201F2C),
                            selectedColor: Color(0xFF3B3953),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            selected: categor == item,
                            onSelected: (selected) {
                              _categoryNotifier.value = item;
                            },
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ValueListenableBuilder(
            valueListenable: _categoryNotifier,
            builder: (context, category, c) => FutureBuilder(
              future: AsyncCocktailRepository().fetchCocktailsByCocktailCategory(category),
              builder: (context, snapshot) {
                _coctailDefinish = snapshot.data;
                if (snapshot.hasError) {
                  return Padding(
                    padding: EdgeInsets.all(100),
                    child: Text(
                      'ERROR',
                      style:
                          TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }
                if (snapshot.hasData) {
                  for (int i = 0; i < _coctailDefinish.length; i++) {
                    this.indexx = _coctailDefinish[i];
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCoctailCategory(
                        indexx,
                        cocktailCategory: _categoryNotifier.value,
                      ),
                      CardCoctailCategory(
                        indexx,
                        cocktailCategory: _categoryNotifier.value,
                      ),
                    ],
                  );
                }
                return Padding(
                    padding: EdgeInsets.all(100), child: Image.asset('image/shaker.png'));
              },
            ),
          ),
        ],
      ),
    );
  }
}

// применение extension
extension widgetCocktailImagesExtinsion on Widget {
  Widget withCocktailImages() => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: this,
      );
}

