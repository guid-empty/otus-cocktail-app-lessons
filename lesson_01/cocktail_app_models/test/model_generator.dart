import 'package:cocktailappmodels/src/repository/cocktail_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CocktailRepository repository;

  setUp(() {
    repository = CocktailRepository();
  });

  group('Coctail repository', () {
    test('fetch method should return all available cocktails', () {
      final actualResult = repository.fetchPopularCocktails();
      expect(actualResult, isNotEmpty);
    });
  });
}
