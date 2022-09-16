import 'package:equatable/equatable.dart';

class ServiceEntity extends Equatable {
  final String serviceName;
  final String icon;

  const ServiceEntity({required this.serviceName, required this.icon});

  @override
  List<Object?> get props => [serviceName, icon];
}
