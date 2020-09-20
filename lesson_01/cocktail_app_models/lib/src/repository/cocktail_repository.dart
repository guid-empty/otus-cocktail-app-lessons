import 'package:cocktailappmodels/src/model/cocktail.dart';
import 'package:cocktailappmodels/src/model/cocktail_category.dart';
import 'package:cocktailappmodels/src/model/cocktail_type.dart';
import 'package:cocktailappmodels/src/model/glass_type.dart';
import 'package:cocktailappmodels/src/model/ingredient_definition.dart';

class CocktailRepository {
  Iterable<Cocktail> fetchPopularCocktails() {
    return [
      Cocktail(
        id: '11000',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction:
            '''Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.''',
        isFavourite: true,
        name: 'Mojito',
        ingredients: [
          IngredientDefinition('Light rum', '2-3 oz '),
          IngredientDefinition('Lime', 'Juice of 1 '),
          IngredientDefinition('Sugar', '2 tsp '),
          IngredientDefinition('Mint', '2-4 '),
          IngredientDefinition('Soda water', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3z6xdi1589574603.jpg',
      ),
      Cocktail(
        id: '11001',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction:
            '''Place sugar cube in old fashioned glass and saturate with bitters, add a dash of plain water. Muddle until dissolved.
Fill the glass with ice cubes and add whiskey.
Garnish with orange twist, and a cocktail cherry.''',
        isFavourite: true,
        name: 'Old Fashioned',
        ingredients: [
          IngredientDefinition('Bourbon', '4.5 cL'),
          IngredientDefinition('Angostura bitters', '2 dashes'),
          IngredientDefinition('Sugar', '1 cube'),
          IngredientDefinition('Water', 'dash'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vrwquq1478252802.jpg',
      ),
      Cocktail(
        id: '11002',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction:
            '''Combine all ingredients (except cola) and pour over ice in a highball glass. Add the splash of cola for color. Decorate with a slice of lemon and serve.''',
        isFavourite: true,
        name: 'Long Island Tea',
        ingredients: [
          IngredientDefinition('Vodka', '1/2 oz '),
          IngredientDefinition('Light rum', '1/2 oz '),
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Tequila', '1/2 oz '),
          IngredientDefinition('Lemon', 'Juice of 1/2 '),
          IngredientDefinition('Coca-Cola', '1 splash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tppn6i1589574695.jpg',
      ),
      Cocktail(
        id: '11003',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction: '''Stir into glass over ice, garnish and serve.''',
        isFavourite: true,
        name: 'Negroni',
        ingredients: [
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Campari', '1 oz '),
          IngredientDefinition('Sweet Vermouth', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg',
      ),
      Cocktail(
        id: '11004',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.oldFashionedGlass,
        instruction:
            '''Shake with ice. Strain into chilled glass, garnish and serve. If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.''',
        isFavourite: true,
        name: 'Whiskey Sour',
        ingredients: [
          IngredientDefinition('Blended whiskey', '2 oz '),
          IngredientDefinition('Lemon', '1/2 slice '),
          IngredientDefinition('Powdered sugar', '1/2 tsp '),
          IngredientDefinition('Cherry', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hbkfsh1589574990.jpg',
      ),
      Cocktail(
        id: '11005',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.''',
        isFavourite: true,
        name: 'Dry Martini',
        ingredients: [
          IngredientDefinition('Gin', '1 2/3 oz '),
          IngredientDefinition('Dry Vermouth', '1/3 oz '),
          IngredientDefinition('Olive', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg',
      ),
      Cocktail(
        id: '11006',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.''',
        isFavourite: true,
        name: 'Daiquiri',
        ingredients: [
          IngredientDefinition('Light rum', '1 1/2 oz '),
          IngredientDefinition('Lime', 'Juice of 1/2 '),
          IngredientDefinition('Powdered sugar', '1 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg',
      ),
      Cocktail(
        id: '11007',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.''',
        isFavourite: true,
        name: 'Margarita',
        ingredients: [
          IngredientDefinition('Tequila', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1/2 oz '),
          IngredientDefinition('Lime juice', '1 oz '),
          IngredientDefinition('Salt', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg',
      ),
      Cocktail(
        id: '11008',
        category: CocktailCategory.cocktail,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''Stirred over ice, strained into a chilled glass, garnished, and served up.''',
        isFavourite: true,
        name: 'Manhattan',
        ingredients: [
          IngredientDefinition('Sweet Vermouth', '3/4 oz '),
          IngredientDefinition('Bourbon', '2 1/2 oz Blended '),
          IngredientDefinition('Angostura bitters', 'dash '),
          IngredientDefinition('Ice', '2 or 3 '),
          IngredientDefinition('Maraschino cherry', '1 '),
          IngredientDefinition('Orange peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/hz7p4t1589575281.jpg',
      ),
      Cocktail(
        id: '11009',
        category: CocktailCategory.punchPartyDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.copperMug,
        instruction:
            '''Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.''',
        isFavourite: true,
        name: 'Moscow Mule',
        ingredients: [
          IngredientDefinition('Vodka', '2 oz '),
          IngredientDefinition('Lime juice', '2 oz '),
          IngredientDefinition('Ginger ale', '8 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/3pylqc1504370988.jpg',
      ),
      Cocktail(
        id: '11010',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Shake all ingredients (except lime wedge) with ice and strain into a cocktail glass. Add the wedge of lime and serve.''',
        isFavourite: true,
        name: 'After Dinner Cocktail',
        ingredients: [
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Lime', '1 '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/vtytxq1483387578.jpg',
      ),
      Cocktail(
        id: '11011',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''Shake all ingredients with ice, strain into a cocktail glass, and serve.''',
        isFavourite: true,
        name: 'After Supper Cocktail',
        ingredients: [
          IngredientDefinition('Triple sec', '1 oz '),
          IngredientDefinition('Apricot brandy', '1 oz '),
          IngredientDefinition('Lemon juice', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/quyxwu1483387610.jpg',
      ),
      Cocktail(
        id: '11012',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.highballGlass,
        instruction:
            '''Pour all ingredients (except for lemon juice) over ice in a highball glass. Stir, add a dash of lemon juice, and serve.''',
        isFavourite: true,
        name: 'Alabama Slammer',
        ingredients: [
          IngredientDefinition('Southern Comfort', '1 oz '),
          IngredientDefinition('Amaretto', '1 oz '),
          IngredientDefinition('Sloe gin', '1/2 oz '),
          IngredientDefinition('Lemon juice', '1 dash '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qtwxwr1483387647.jpg',
      ),
      Cocktail(
        id: '11013',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Stir all ingredients with ice, strain contents into a cocktail glass. Drop in a twist of lemon and serve.''',
        isFavourite: true,
        name: 'Alaska Cocktail',
        ingredients: [
          IngredientDefinition('Orange bitters', '2 dashes '),
          IngredientDefinition('Gin', '1 1/2 oz '),
          IngredientDefinition('Yellow Chartreuse', '3/4 oz '),
          IngredientDefinition('Lemon peel', 'Twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/wsyryt1483387720.jpg',
      ),
      Cocktail(
        id: '11014',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.''',
        isFavourite: true,
        name: 'Alexander',
        ingredients: [
          IngredientDefinition('Gin', '1/2 oz '),
          IngredientDefinition('Creme de Cacao', '1/2 oz white '),
          IngredientDefinition('Light cream', '2 oz '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/urystu1478253039.jpg',
      ),
      Cocktail(
        id: '11016',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Shake all ingredients (except nutmeg) with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.''',
        isFavourite: true,
        name: 'Brandy Alexander',
        ingredients: [
          IngredientDefinition('Brandy', '1 oz '),
          IngredientDefinition('Creme de Cacao', '1 oz white '),
          IngredientDefinition('Light cream', '1 oz '),
          IngredientDefinition('Nutmeg', 'null'),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/tvqxvr1483387746.jpg',
      ),
      Cocktail(
        id: '11019',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''Combine and shake all ingredients with ice, strain into a cocktail glass, and serve.''',
        isFavourite: true,
        name: 'Alfie Cocktail',
        ingredients: [
          IngredientDefinition('Lemon vodka', '1 1/2 oz '),
          IngredientDefinition('Triple sec', '1 dash '),
          IngredientDefinition('Pineapple juice', '1 tblsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/ypxsqy1483387829.jpg',
      ),
      Cocktail(
        id: '11020',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Combine and shake all ingredients with ice, strain contents into a cocktail glass, and serve.''',
        isFavourite: true,
        name: 'Algonquin',
        ingredients: [
          IngredientDefinition('Blended whiskey', '1 1/2 oz '),
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Pineapple juice', '1 oz '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwryxx1483387873.jpg',
      ),
      Cocktail(
        id: '11021',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction:
            '''Shake all ingredients (except lemon peel) with ice and strain into a cocktail glass. Top with the twist of lemon peel and serve.''',
        isFavourite: true,
        name: 'Allegheny',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Bourbon', '1 oz '),
          IngredientDefinition('Blackberry brandy', '1 1/2 tsp '),
          IngredientDefinition('Lemon juice', '1 1/2 tsp '),
          IngredientDefinition('Lemon peel', '1 twist of '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/uwvyts1483387934.jpg',
      ),
      Cocktail(
        id: '11022',
        category: CocktailCategory.ordinaryDrink,
        cocktailType: CocktailType.alcoholic,
        glassType: GlassType.cocktailGlass,
        instruction: '''Stir all ingredients with ice, strain contents into a cocktail glass, and serve.''',
        isFavourite: true,
        name: 'Allies Cocktail',
        ingredients: [
          IngredientDefinition('Dry Vermouth', '1 oz '),
          IngredientDefinition('Gin', '1 oz '),
          IngredientDefinition('Kummel', '1/2 tsp '),
        ],
        drinkThumbUrl: 'https://www.thecocktaildb.com/images/media/drink/qvprvp1483388104.jpg',
      ),
    ];
  }
}
