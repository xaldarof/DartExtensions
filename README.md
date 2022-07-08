<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

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

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
