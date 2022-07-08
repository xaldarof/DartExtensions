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

extension ListReverse<T> on List<T> {
  List<T> reverse() {
    var reversed = <T>[];

    for (int i = length-1; i>=0; i--) {
      reversed.add(this[i]);
    }

      return reversed;
  }
}

extension ListLastIndex<T> on List<T> {
  int lastIndex() {
    return length - 1;
  }
}

extension MapIndexed<T> on List<T> {
  List<T> mapIndexed({required T Function(T item, int index) onEach}) {
    for (int i = 0; i < length - 1; i++) {
      this[i] = onEach(this[i], i);
    }
    return this;
  }
}
