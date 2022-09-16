import 'package:equatable/equatable.dart';
import 'package:mms_assignment/features/homepage/domain/entities/product_entity.dart';
import 'package:mms_assignment/features/homepage/domain/entities/service_entity.dart';

class HomepageDataEntity extends Equatable {
  final String username;
  final List<ProductEntity> productList;
  final List<ServiceEntity> serviceList;
  const HomepageDataEntity(
      {required this.username,
      required this.productList,
      required this.serviceList});

  @override
  List<Object?> get props => [username, productList, serviceList];
}
