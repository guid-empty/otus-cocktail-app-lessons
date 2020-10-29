import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'filter_page.dart';
import 'menu_cocktail_category.dart';

class WaitingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0D13),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              height: 50,
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null',
              //       onPressed: () {
              //         Navigator.push(context, MaterialPageRoute(builder: (context)=>CocktailsFilterScreen()));
              //         debugPrint(' ');
              //       },
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     MenuCocktailCategory(nameCocktailCategory: 'null'),
              //     SizedBox(
              //       width: 5,
              //     ),
              //   ],
              // ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 190), child: Image.asset('image/shaker.png')),
                Container(
                  child: Text(
                    'Search...',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
