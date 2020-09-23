import 'package:cocktailappmodels/src/repository/sync_cocktail_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  SyncCocktailRepository syncRepository;

  setUp(() {
    syncRepository = SyncCocktailRepository();
  });

  group('Coctail repository', () {
    test('fetchAllCocktails method should return all cocktails', () {
      final actualResult = syncRepository.fetchAllCocktails();
      expect(actualResult, isNotEmpty);

      final actualResult1 = syncRepository.fetchAllCocktails();
      expect(actualResult1, isNotEmpty);

    });

    test('fetchPopularCocktails method should return 20 popular cocktails', () {
      final actualResult = syncRepository.fetchPopularCocktails();
      expect(actualResult, isNotEmpty);
      expect(actualResult.length, 20);
    });
  });
}
