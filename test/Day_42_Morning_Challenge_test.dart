import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {});
  test('percentile log', () {
    expect( log([1, 2, 3, 4]), [[25, 1], [50, 2], [75, 3], [90, 4], [95, 4], [99, 4], [100, 4]]);
    expect(
        log([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]), [[25, 3], [50, 8], [75, 16], [90, 20], [95, 22], [99, 22], [100, 22]]);
  });
}
