import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Избранное'),
      ),
      body: null, // _buildBody(context),
    );
  }

  // вариант с selector
  // Widget _buildBody(BuildContext context) {
  //   final favorites = context
  //       .select<FavoritesViewModel, Iterable<CocktailDefinition>>((value) {
  //     return value.favorites;
  //   });
  //   print('FavoritesPage build');
  //   return GridView.builder(
  //     padding: const EdgeInsets.all(8.0),
  //     gridDelegate: cocktailsGridDelegate,
  //     itemCount: favorites?.length ?? 0,
  //     itemBuilder: (context, index) {
  //       return CocktailGridItem(favorites?.elementAt(index));
  //     },
  //   );
  // }
}
