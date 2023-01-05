class EnvironmentNotFound implements Exception {
  final String? value;

  EnvironmentNotFound(this.value);

  @override
  String toString() {
    return "this value doesnt found in env file";
  }
}
