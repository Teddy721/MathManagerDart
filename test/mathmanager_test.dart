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
});
}

    
