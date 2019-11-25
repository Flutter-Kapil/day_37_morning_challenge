import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test("test case 1", () {
	expect(maxArea([4,8,6,7,6,5]), 20);
  expect(maxArea([1,8,6,2,5,4,8,3,7]), 49);
  });
}

