import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:flutter/material.dart';

///
/// TODO:
///
class FavoritesPageWidget extends StatefulWidget {
  @override
  _FavoritesPageWidgetState createState() => _FavoritesPageWidgetState();
}

class _FavoritesPageWidgetState extends State<FavoritesPageWidget> {
  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      currentSelectedNavBarItem: 2,
      child: _buildFavoriteCocktailItems(context),
    );
  }

  Widget _buildFavoriteCocktailItems(BuildContext context) => Center(child: Text('todo: add code here'));
}
