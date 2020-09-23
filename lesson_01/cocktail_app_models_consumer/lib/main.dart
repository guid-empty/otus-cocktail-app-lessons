import 'package:cocktailappmodels/models.dart';
import 'package:flutter/material.dart';

import 'package:cocktailappmodels/src/repository/sync_cocktail_repository.dart';

void main() {
  final repository = SyncCocktailRepository();
  final cocktails = repository.fetchAllCocktails();
  runApp(Center(
    child: Text('We have ${cocktails.length} cocktails at the moment!'),
  ));
}
