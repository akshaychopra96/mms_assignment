import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String productName;
  final double amount;
  const ProductEntity({
    required this.productName,
    required this.amount,
  });

  @override
  List<Object?> get props => [productName, amount];
}
