import 'package:lesson_18/app/complex/core/models.dart';

abstract class FavoritesRepository {
  Future<Iterable<CocktailDefinition>> fetchFavorites();

  Future addToFavorites(CocktailDefinition cocktailDefinition);

  Future removeFromFavorites(String id);
}
