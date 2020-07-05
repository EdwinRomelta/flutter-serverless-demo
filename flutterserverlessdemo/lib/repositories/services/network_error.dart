class NetworkException {
  final String message;

  const NetworkException(this.message);

  String toString() => "NetworkException: $message";

  int get errorCode => null;
}
