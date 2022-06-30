extension ReturnNullIfEmpty on String {
  String? nullIfEmpty() {
    if (trim().isEmpty) {
      return null;
    } else {
      return this;
    }
  }
}
