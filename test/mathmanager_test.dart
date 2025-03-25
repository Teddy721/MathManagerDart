import 'package:test/test.dart';
import '../lib/mathmanager.dart';

void main() {
  group('Test all methods of mathmanager', () {
    test('Test add 2 positive integers', () {
	mathmanager math = mathmanager();
        expect(math.add(0, 3), equals(3));
    });    
    test('Test add 2 negative integers', () {
	mathmanager math = mathmanager();
      	expect(math.add(-1, -3), equals(-4));
    });
        // Tests for calculateMonthlyInterest()
    test('Test 1-year interest calculation', () {
      expect(math.calculateMonthlyInterest(1000, 1), closeTo(3.17, 0.01));
    });

    test('Test 2-year interest calculation', () {
      expect(math.calculateMonthlyInterest(1000, 2), closeTo(3.00, 0.01));
    });

    // Tests for calculateTax()
    test('Test tax for income below 12570', () {
      expect(math.calculateTax(12000), equals(0));
    });

    test('Test tax for income in 20% band', () {
      expect(math.calculateTax(30000), closeTo(3486, 0.01));
    });

    test('Test tax for income in 40% band', () {
      expect(math.calculateTax(60000), closeTo(11432, 0.01));
    });

    test('Test tax for income in 45% band', () {
      expect(math.calculateTax(150000), closeTo(48732, 0.01));
    });

    // Tests for calculateDegreeClassification()
    test('Test First Class degree', () {
      List<Map<String, dynamic>> modules = [
        {'mark': 75, 'credits': 20},
        {'mark': 80, 'credits': 20},
        {'mark': 70, 'credits': 20}
      ];
      expect(math.calculateDegreeClassification(modules), equals('First Class'));
    });

    test('Test Upper Second Class (2:1) degree', () {
      List<Map<String, dynamic>> modules = [
        {'mark': 65, 'credits': 20},
        {'mark': 62, 'credits': 20},
        {'mark': 58, 'credits': 20}
      ];
      expect(math.calculateDegreeClassification(modules), equals('Upper Second Class (2:1)'));
    });

    test('Test Lower Second Class (2:2) degree', () {
      List<Map<String, dynamic>> modules = [
        {'mark': 55, 'credits': 20},
        {'mark': 52, 'credits': 20},
        {'mark': 45, 'credits': 20}
      ];
      expect(math.calculateDegreeClassification(modules), equals('Lower Second Class (2:2)'));
    });

    test('Test Third Class degree', () {
      List<Map<String, dynamic>> modules = [
        {'mark': 45, 'credits': 20},
        {'mark': 42, 'credits': 20},
        {'mark': 40, 'credits': 20}
      ];
      expect(math.calculateDegreeClassification(modules), equals('Third Class'));
    });

    test('Test Fail', () {
      List<Map<String, dynamic>> modules = [
        {'mark': 35, 'credits': 20},
        {'mark': 30, 'credits': 20},
        {'mark': 25, 'credits': 20}
      ];
      expect(math.calculateDegreeClassification(modules), equals('Fail'));
    });
  });
}

});
}

    
