import 'package:should_be_hello_world/should_be_hello_world.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
