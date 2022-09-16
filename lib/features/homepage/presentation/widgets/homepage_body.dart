import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/core/constants/text_styles.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/products/product_list_view.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/services/service_grid_view.dart';

class HomepageBody extends StatelessWidget {
  const HomepageBody({super.key, required this.homepageData});
  final HomepageDataEntity homepageData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SizedBox(
                height: 200,
                child: ProductListView(productList: homepageData.productList),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Text(
                CommonConstants.serviceTitle,
                style: TextStyles.headerText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ServicesGridView(serviceList: homepageData.serviceList),
            ),
          ],
        ),
      ),
    );
  }
}
