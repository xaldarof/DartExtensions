

extension NullCheck<T> on T? {
  bool isNull() {
    return this == null;
  }
}
