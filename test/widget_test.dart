import 'package:flutter_test/flutter_test.dart';

void main() {
  test('100 is an A', () {
    final calculator = new GradeCalculator();
    bool result = calculator.isA(100);
    expect(result, true);
  });
  test('90 is an A', () {
    final calculator = new GradeCalculator();
    bool result = calculator.isA(90);
    expect(result, true);
  });
  test('60 is an A', () {
    final calculator = new GradeCalculator();
    bool result = calculator.isA(60);
    expect(result, false);
  });
}

class GradeCalculator {
  bool isA(int i) => i == 100;
}


