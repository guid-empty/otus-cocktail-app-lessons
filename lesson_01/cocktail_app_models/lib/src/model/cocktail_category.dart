///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?c\=list
///
class CocktailCategory {
  static const CocktailCategory ordinaryDrink = CocktailCategory._('Ordinary Drink');
  static const CocktailCategory cocktail = CocktailCategory._('Cocktail');
  static const CocktailCategory milkFloatShake = CocktailCategory._('Milk / Float / Shake');
  static const CocktailCategory unknown = CocktailCategory._('Other/Unknown');
  static const CocktailCategory cocoa = CocktailCategory._('Cocoa');
  static const CocktailCategory shot = CocktailCategory._('Shot');
  static const CocktailCategory coffeeTea = CocktailCategory._('Coffee / Tea');
  static const CocktailCategory homemadeLiqueur = CocktailCategory._('Homemade Liqueur');
  static const CocktailCategory punchPartyDrink = CocktailCategory._('Punch / Party Drink');
  static const CocktailCategory beer = CocktailCategory._('Beer');
  static const CocktailCategory softDrinkSoda = CocktailCategory._('Soft Drink / Soda');

  static const Iterable<CocktailCategory> values = [
    ordinaryDrink,
    cocktail,
    milkFloatShake,
    unknown,
    cocoa,
    shot,
    coffeeTea,
    homemadeLiqueur,
    punchPartyDrink,
    beer,
    softDrinkSoda,
  ];

  final String value;

  const CocktailCategory._(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CocktailCategory && runtimeType == other.runtimeType && value == other.value;
}
