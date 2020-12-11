import 'package:flutter/material.dart';
import 'package:lesson_18/app/complex/core/models.dart';

class FavoritesButton extends StatelessWidget {
  const FavoritesButton(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return Container();
    // return Selector<FavoritesViewModel, bool>(
    //   selector: (context, model) {
    //     return model.isSelected(cocktailDefinition.id);
    //   },
    //   builder: (context, selected, _) {
    //     print('FavoritesButton build:${cocktailDefinition.id}');
    //     if (selected) {
    //       return IconButton(
    //           onPressed: () {
    //             context
    //                 .read<FavoritesViewModel>()
    //                 .removeFromFavorites(cocktailDefinition.id);
    //           },
    //           icon: Icon(Icons.favorite, color: Colors.red));
    //     }
    //     return IconButton(
    //         onPressed: () {
    //           context
    //               .read<FavoritesViewModel>()
    //               .addToFavorites(cocktailDefinition);
    //         },
    //         icon: Icon(Icons.favorite_border));
    //   },
    // );
  }
}
