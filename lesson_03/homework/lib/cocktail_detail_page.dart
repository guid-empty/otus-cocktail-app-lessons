import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            headerArea(),
            nameArea(),
            ingredientsArea(),
            instructionArea(),
            ratingArea()
          ]))),
    );
  }

  Widget headerArea() {
    return Container(
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/images/glass_cr.png", ),
            Container(
              padding: EdgeInsets.only(left: 28, top: 16),
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.arrow_back,
                color: Color(0xffffffff),
                size: 16.0,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 19, top: 16),
              alignment: Alignment.topRight,
              child: Icon(
                Icons.open_in_new,
                color: Color(0xffffffff),
                size: 18.0,
              ),
            ),
          ],
        ));
  }

  Widget nameArea() {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 32, right: 34, top: 33, bottom: 24),
        color: Color(0xff1A1927),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(cocktail.name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ))),
                  Icon(
                    Icons.favorite,
                    color: Color(0xffffffff),
                    size: 20.0,
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(cocktail.id,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff848396),
                      ))),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Категория коктейля",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffeaeaea),
                      ))),
              Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
                  margin: EdgeInsets.only(top: 8),
                  child: Text(cocktail.category.value,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ))),
              Container(
                  margin: EdgeInsets.only(top: 18),
                  child: Text("Тип коктейля",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffeaeaea),
                      ))),
              Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
                  margin: EdgeInsets.only(top: 8),
                  child: Text(cocktail.cocktailType.value,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ))),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text("Тип стекла",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffeaeaea),
                      ))),
              Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
                  margin: EdgeInsets.only(top: 10),
                  child: Text(cocktail.glassType.value,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      )))
            ]));
  }

  Widget ingredientsArea() {
    return Container(
        width: double.infinity,
        padding:
            const EdgeInsets.only(left: 32, top: 24, right: 32, bottom: 24),
        color: Color(0xff000000),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Ингредиенты:",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffB1AFC6),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var item in cocktail.ingredients)
                      Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                item.ingredientName,
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              )),
                              Text(
                                item.measure,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ))
                  ],
                ),
              ),
            ]));
  }

  Widget instructionArea() {
    var items = cocktail.instruction.split("\n");
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 24, bottom: 40),
        color: Color(0xff201F2C),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Text("Инструкция для приготовления",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB1AFC6),
                      ))),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var item in items)
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          margin: EdgeInsets.only(top: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "•",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Text(
                                  item.replaceAll("- ", ""),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              )),
                            ],
                          ))
                  ],
                ),
              ),
            ]));
  }

  Widget ratingArea() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 20, right: 20),
      color: Color(0xff1A1927),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.star,
              color: Color(0xffffffff),
              size: 32.0,
            ),
            backgroundColor: Color(0xff2A293A),
            radius: 24.0,
          ),
          CircleAvatar(
            child: Icon(
              Icons.star,
              color: Color(0xffffffff),
              size: 32.0,
            ),
            backgroundColor: Color(0xff2A293A),
            radius: 24.0,
          ),
          CircleAvatar(
            child: Icon(
              Icons.star,
              color: Color(0xffffffff),
              size: 32.0,
            ),
            backgroundColor: Color(0xff2A293A),
            radius: 24.0,
          ),
          CircleAvatar(
            child: Icon(
              Icons.star,
              color: Color(0xff1A1927),
              size: 32.0,
            ),
            backgroundColor: Color(0xff2A293A),
            radius: 24.0,
          ),
          CircleAvatar(
            child: Icon(
              Icons.star,
              color: Color(0xff1A1927),
              size: 32.0,
            ),
            backgroundColor: Color(0xff2A293A),
            radius: 24.0,
          )
        ],
      ),
    );
  }
}
