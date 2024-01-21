import 'package:flutter_test/flutter_test.dart';
import 'package:pml/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ConcertsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
