import 'package:mms_assignment/features/homepage/domain/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  const ServiceModel({required super.serviceName, required super.icon});

  factory ServiceModel.fromJson(Map<String, dynamic> map) {
    return ServiceModel(
      serviceName: map['serviceName'],
      icon: map['icon'],
    );
  }
}
