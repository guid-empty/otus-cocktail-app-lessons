@TestOn('vm')
import 'package:test/test.dart';

void main() {
  setUpAll(() => print('setUpAll callback'));

  setUp(() => print('setUp callback'));

  test('some description', () {
    print('we are here!');
  });

  tearDown(() => print('tearDown callback'));

  tearDownAll(() => print('tearDownAll callback'));
}
