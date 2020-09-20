///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?g\=list
///
class GlassType {
  static const GlassType highballGlass = GlassType._('Highball glass');
  static const GlassType cocktailGlass = GlassType._('Cocktail glass');
  static const GlassType oldFashionedGlass = GlassType._('Old-fashioned glass');
  static const GlassType collinsGlass = GlassType._('Collins glass');
  static const GlassType pousseCafeGlass = GlassType._('Pousse cafe glass');
  static const GlassType champagneFlute = GlassType._('Champagne flute');
  static const GlassType whiskeySourGlass = GlassType._('Whiskey sour glass');
  static const GlassType cordialGlass = GlassType._('Cordial glass');
  static const GlassType brandySnifter = GlassType._('Brandy snifter');
  static const GlassType whiteWineGlass = GlassType._('White wine glass');
  static const GlassType nickAndNoraGlass = GlassType._('Nick and Nora Glass');
  static const GlassType hurricaneGlass = GlassType._('Hurricane glass');
  static const GlassType coffeeMug = GlassType._('Coffee mug');
  static const GlassType shotGlass = GlassType._('Shot glass');
  static const GlassType jar = GlassType._('Jar');
  static const GlassType irishCoffeeCup = GlassType._('Irish coffee cup');
  static const GlassType punchBowl = GlassType._('Punch bowl');
  static const GlassType pitcher = GlassType._('Pitcher');
  static const GlassType pintGlass = GlassType._('Pint glass');
  static const GlassType copperMug = GlassType._('Copper Mug');
  static const GlassType wineGlass = GlassType._('Wine Glass');
  static const GlassType beerMug = GlassType._('Beer mug');
  static const GlassType margaritaCoupetteGlass = GlassType._('Margarita/Coupette glass');
  static const GlassType beerPilsner = GlassType._('Beer pilsner');
  static const GlassType beerGlass = GlassType._('Beer Glass');
  static const GlassType parfaitGlass = GlassType._('Parfait glass');
  static const GlassType masonJar = GlassType._('Mason jar');
  static const GlassType margaritaGlass = GlassType._('Margarita glass');
  static const GlassType martiniGlass = GlassType._('Martini Glass');
  static const GlassType balloonGlass = GlassType._('Balloon Glass');
  static const GlassType coupeGlass = GlassType._('Coupe Glass');
  static const GlassType notSpecified = GlassType._('');

  static const Iterable<GlassType> values = [
    highballGlass,
    cocktailGlass,
    oldFashionedGlass,
    collinsGlass,
    pousseCafeGlass,
    champagneFlute,
    whiskeySourGlass,
    cordialGlass,
    brandySnifter,
    whiteWineGlass,
    nickAndNoraGlass,
    hurricaneGlass,
    coffeeMug,
    shotGlass,
    jar,
    irishCoffeeCup,
    punchBowl,
    pitcher,
    pintGlass,
    copperMug,
    wineGlass,
    beerMug,
    margaritaCoupetteGlass,
    beerPilsner,
    beerGlass,
    parfaitGlass,
    masonJar,
    margaritaGlass,
    martiniGlass,
    balloonGlass,
    coupeGlass,
    notSpecified,
  ];

  final String value;

  const GlassType._(this.value);

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is GlassType && runtimeType == other.runtimeType && value == other.value;
}
