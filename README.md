
## Example tests for list extensions
```dart

import 'core.dart';
import 'list.dart';
import 'string.dart';

void main() {
  group("extensions", () {
    test("filter_extension", () {
      var array = [1, 2, 3, 5, 6];

      var filtered = array.filter(condition: (element) {
        return element % 2 == 0;
      });

      expect(2,filtered.length);
    });

    test("removeIf_extension", () {
      var array = [1, 2, 3, 5, 6];

      var filtered = array.removeIf(condition: (element) {
        return element > 2;
      });

      expect(2,filtered.length);
    });

    test("nullIf_extension(with text)", () {
      var text = "Hello";

      var result = text.nullIfEmpty();
      expect(text,result);
    });

    test("nullIf_extension(without text)", () {
      var text = " ";

      var result = text.nullIfEmpty();
      expect(null,result);
    });

    test("last_index", () {
      var text = [1, 2, 3];

      var result = text.lastIndex();
      expect(2,result);
    });

    test("map_indexed", () {
      var result = [1, 2, 3].mapIndexed(onEach: (item, index) {
        return item = item * item;
      });

      expect(4,result[1]);

    });

    test("return_true_on_null", () {
      List<String>? result;

      expect(result.isNull(),true);
    });

    test("return_false_on_null", () {
      List<String> result  = [];

      expect(result.isNull(),false);
    });

    test("reverse_list", () {
      List<String> list  = ["a","b","c"];

      expect(list.reverse(),["c","b","a"]);
    });
  });
}
```


## Example tests for string extensions
```dart
extension ReturnNullIfEmpty on String {
  String? nullIfEmpty() {
    if (trim().isEmpty) {
      return null;
    } else {
      return this;
    }
  }
}
```

