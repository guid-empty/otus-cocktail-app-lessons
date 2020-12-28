@TestOn('vm')
import 'package:test/test.dart';

void main() {

  setUp(() => print('setUp callback'));

  test('some description', () {
    print('we are here!');
  });

  tearDown(() => print('tearDown callback'));
}
