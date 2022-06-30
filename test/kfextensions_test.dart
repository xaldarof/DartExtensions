import 'package:flutter_test/flutter_test.dart';

import 'list.dart';
import 'string.dart';

void main() {
  group("extensions", () {
    test("filter_extension", () {
      var array = [1, 2, 3, 5, 6];

      var filtered = array.filter(condition: (element) {
        return element % 2 == 0;
      });

      expect(filtered.length, 2);
    });

    test("removeIf_extension", () {
      var array = [1, 2, 3, 5, 6];

      var filtered = array.removeIf(condition: (element) {
        return element > 2;
      });

      expect(filtered.length, 2);
    });

    test("nullIf_extension(with text)", () {
      var text = "Hello";

      var result = text.nullIfEmpty();
      expect(result, text);
    });

    test("nullIf_extension(without text)", () {
      var text = " ";

      var result = text.nullIfEmpty();
      expect(result, null);
    });

    test("last_index", () {
      var text = [1, 2, 3];

      var result = text.lastIndex();
      expect(result, 2);
    });
  });
}
