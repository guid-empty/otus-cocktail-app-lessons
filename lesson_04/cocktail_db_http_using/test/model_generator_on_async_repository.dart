import 'package:cocktaildbhttpusing/models.dart';
import 'package:cocktaildbhttpusing/src/repository/async_cocktail_repository.dart';

void main() async {
  var repository = AsyncCocktailRepository();
  final allCocktails = <Cocktail>[];

  for (final cocktailType in CocktailType.values) {
    final cocktailDefinitions = await repository.fetchCocktailsByCocktailType(cocktailType);

    for (final cd in cocktailDefinitions) {
      final cocktailDetails = await repository.fetchCocktailDetails(cd.id);
      allCocktails.add(cocktailDetails);
    }
  }

  var cocktailsDataRepresentation = '';
  for (final cocktail in allCocktails) {
    final glass = cocktail.glassType;
    final cocktailType = cocktail.cocktailType;
    final category = cocktail.category;

    var ingredients = '';

    cocktail.ingredients.forEach((IngredientDefinition ingredient) =>
        ingredients += 'IngredientDefinition(\'${ingredient.ingredientName}\', \'${ingredient.measure}\'),\r\n');

    cocktailsDataRepresentation += '''
      Cocktail(
        id: '${cocktail.id}',
        category: CocktailCategory.${category.name},
        cocktailType: CocktailType.${cocktailType.name},
        glassType: GlassType.${glass.name},
        instruction: \'\'\'
          ${cocktail.instruction}
        \'\'\',
        isFavourite: true,
        name: '${cocktail.name}',
        ingredients: [
          $ingredients
        ],
        drinkThumbUrl: '${cocktail.drinkThumbUrl}',
      ),
    ''';
  }

  print(cocktailsDataRepresentation);
}
