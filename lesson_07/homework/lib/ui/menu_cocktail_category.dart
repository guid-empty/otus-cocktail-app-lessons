import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/waiting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'error_page.dart';

class findChipWidget extends StatefulWidget {
  final List<CocktailCategory> reportList;

  findChipWidget(this.reportList);

  @override
  _findCreateWidgetState createState() => new _findCreateWidgetState();
}

class _findCreateWidgetState extends State<findChipWidget> {
  String selectedList = "";
  String any = "Cocktail";


  var sa = AsyncCocktailRepository().fetchCocktailsByCocktailCategory(CocktailCategory.ordinaryDrink);

  _buildFindChipList() {
    List<Widget> choises = List();
    widget.reportList.forEach((item) {
      choises.add(
        Container(
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
            selected: selectedList == item.value,
            onSelected: (selected) {
              setState(() {
                selectedList = item.value;

                if (selectedList == 'Shot'){
                  // то тут переходим на страницу коктейля Shot, но это делать нужно точно не так , А как я не понимаю...
                }
// вот тоже затык , если перебирать через if else, то очнь много, и я думаю , что можно как то по другому...

              });
            },
          ),
        ),
      );
    });
    return choises;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _buildFindChipList(),
    );
  }
}

// TODO: Тут я организовал кнопки поиска коктейлей... я вродебы разобрался как работать со Future и FutureBuilder Но
// не могу понять как его применить тут, ... применять когда я нажимаю для на кнопку определенного коктейля для
// поиска?? Есть стпаницы ошибки, и ожидания, но скорее всего их тоже нужно делать не так, я вроде уже понял как...
// вообщем толком ничего не получилось... какая то КАКАФОНИЯ))))
