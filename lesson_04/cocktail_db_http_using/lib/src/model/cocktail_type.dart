///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?a\=list
///
class CocktailType {
  static const CocktailType alcoholic = CocktailType._('Alcoholic');
  static const CocktailType nonAlcoholic = CocktailType._('Non alcoholic');
  static const CocktailType optionalAlcohol = CocktailType._('Optional alcohol');

  static const Iterable<CocktailType> values = [alcoholic, nonAlcoholic, optionalAlcohol];

  final String value;

  const CocktailType._(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CocktailType && runtimeType == other.runtimeType && value == other.value;

  ///
  /// Show toString() method using in debug session
  ///
  @override
  String toString() => 'CocktailType{value: $value}';
}
