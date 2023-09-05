import 'package:flutter_test/flutter_test.dart';


  class GradeCalculator {
  bool isA(int i) {
  if (_hundredEqualsA(i)) {
  return true;
  } else {
  return false;
  }
 }

  bool _hundredEqualsA(int i) {
  return i == 100;
  }
}


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
  test('60 is not an A', () {
    final calculator = new _GradeCalculator();
    bool result = calculator.isA(60);
    expect(result, false);
  });
}

class _GradeCalculator {
  bool isA(int i) => i == 100;
}


