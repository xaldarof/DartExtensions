
extension ListFilter<T> on List<T> {
  List<T> filter({required bool Function(T) condition}) {
    var filtered = <T>[];

    forEach((element) {
      if (condition(element)) {
        filtered.add(element);
      }
      condition(element);
    });

    return filtered;
  }
}

extension ListRemove<T> on List<T> {
  List<T> removeIf({required bool Function(T) condition}) {
    var filtered = <T>[];

    forEach((element) {
      if (!condition(element)) {
        filtered.add(element);
      }
      condition(element);
    });

    return filtered;
  }
}

extension ListLastIndex<T> on List<T> {
  int lastIndex() {
    return length - 1;
  }
}
