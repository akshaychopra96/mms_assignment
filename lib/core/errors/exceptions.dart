class ServerException implements Exception {
  ServerException({
    required this.message,
    required this.errorCode,
  });

  final String message;
  final String errorCode;
}
