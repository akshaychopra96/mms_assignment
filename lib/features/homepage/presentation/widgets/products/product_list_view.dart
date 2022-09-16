import 'package:flutter/material.dart';
import 'package:mms_assignment/features/homepage/domain/entities/product_entity.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/products/product_list_view_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    Key? key,
    required this.productList,
  }) : super(key: key);

  final List<ProductEntity> productList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: productList.length,
      itemBuilder: (context, index) {
        final product = productList[index];
        return ProductListViewItem(product: product);
      },
    );
  }
}
