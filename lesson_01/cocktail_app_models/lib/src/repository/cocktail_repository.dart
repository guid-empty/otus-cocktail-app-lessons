import 'package:cocktailappmodels/src/model/cocktail.dart';
import 'package:cocktailappmodels/src/model/cocktail_category.dart';
import 'package:cocktailappmodels/src/model/cocktail_type.dart';
import 'package:cocktailappmodels/src/model/glass_type.dart';
import 'package:cocktailappmodels/src/model/ingredient_definition.dart';

class CocktailRepository {
  Iterable<Cocktail> fetchAllCocktails() {
    return [
      Cocktail(
        id: '1',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerGlass,
        instruction: 'Just drink a beer',
        isFavourite: true,
        name: 'Beer Home beer',
        ingredients: [
          IngredientDefinition('Beer', '1l'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg',
      ),
      Cocktail(
        id: '2',
        category: CocktailCategory.beer,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.beerGlass,
        instruction: 'Just drink a beer',
        isFavourite: true,
        name: 'Beer Home beer',
        ingredients: [
          IngredientDefinition('Beer', '1l'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg',
      ),
    ];
  }
}
