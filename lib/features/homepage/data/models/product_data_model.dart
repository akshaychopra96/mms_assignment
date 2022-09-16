import 'package:mms_assignment/features/homepage/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({required super.productName, required super.amount});

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
      productName: map['productName'],
      amount: map['amount'],
    );
  }
}
