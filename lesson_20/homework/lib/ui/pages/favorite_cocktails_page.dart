import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:flutter/material.dart';

///
/// TODO:
///
class FavouriteCocktailsPage extends StatefulWidget {
  @override
  _FavouriteCocktailsPageState createState() => _FavouriteCocktailsPageState();
}

class _FavouriteCocktailsPageState extends State<FavouriteCocktailsPage> {
  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Избранное',
      currentSelectedNavBarItem: 2,
      child: _buildFavoriteCocktailItems(context),
    );
  }

  Widget _buildFavoriteCocktailItems(BuildContext context) => Center(
          child: Text(
        'todo: add code here',
        style: Theme.of(context).textTheme.caption,
      ));
}
