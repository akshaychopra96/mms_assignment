import 'package:mms_assignment/features/homepage/data/models/product_data_model.dart';
import 'package:mms_assignment/features/homepage/data/models/service_model.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/features/homepage/domain/entities/product_entity.dart';
import 'package:mms_assignment/features/homepage/domain/entities/service_entity.dart';

class HomepageDataModel extends HomepageDataEntity {
  const HomepageDataModel(
      {required super.username,
      required super.productList,
      required super.serviceList});

  factory HomepageDataModel.fromJson(Map<String, dynamic> json) {
    final products = json['products'];
    List<ProductEntity> productList = [];
    for (int i = 0; i < products.length; i++) {
      final product = ProductModel.fromJson(products[i]);
      productList.add(product);
    }

    final services = json['services'];
    List<ServiceEntity> serviceList = [];
    for (int i = 0; i < services.length; i++) {
      final service = ServiceModel.fromJson(services[i]);
      serviceList.add(service);
    }

    return HomepageDataModel(
      username: json['username'],
      productList: productList,
      serviceList: serviceList,
    );
  }
}
