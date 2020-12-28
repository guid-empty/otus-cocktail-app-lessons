import 'package:cocktail_app/start_to_test_classes/00_favorites_storage.dart';
@TestOn('vm')
import 'package:test/test.dart';

void main() {
  final favoritesStorage = FavoritesStorage();

  setUp(() {});

  setUpAll(() {});

  test('Favorites storage should be empty in initial state', () {
    expect(favoritesStorage.isEmpty, true);

    //  todo: uncomment this to show matchers
    expect(favoritesStorage.isEmpty, isEmpty);
  });

  tearDown(() {});

  tearDownAll(() {});
}
