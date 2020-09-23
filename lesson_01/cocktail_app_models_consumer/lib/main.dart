import 'package:cocktailappmodels/models.dart';
import 'package:cocktailappmodels/src/repository/sync_cocktail_repository.dart';
import 'package:flutter/material.dart';

void main() {
  final repository = SyncCocktailRepository();
  final cocktails = repository.fetchAllCocktails();
  final popularCocktails = repository.fetchPopularCocktails();

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: Text(
            'We have ${cocktails.length} cocktails '
            'and ${popularCocktails.length}  popular at the moment!',
          ),
        ),
      ),
    ),
  );
}
