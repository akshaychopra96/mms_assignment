import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final customProps = const <dynamic>[];

  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  const Failure();

  @override
  List<dynamic> get props => customProps;
}

class ServerFailure extends Failure {
  const ServerFailure({
    required this.message,
    required this.errorCode,
  });

  final String? message;
  final String? errorCode;

  @override
  List<dynamic> get props => [
        message,
        errorCode,
      ];
}
