import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/app_colors.dart';
import 'package:mms_assignment/core/utils/number_utils.dart';
import 'package:mms_assignment/features/homepage/domain/entities/product_entity.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key, required this.product});
  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: calculateColor(product.productName),
          ),
          width: MediaQuery.of(context).size.width - 70,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    product.productName,
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        '\$ ${NumberUtils.addCommasToNumber(product.amount.toString())}.',
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: NumberUtils.getFractionPart(product.amount),
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.homepageButtonColor,
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      width: 110,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            calculateButtonText(product.productName),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const Icon(
                            Icons.chevron_right_outlined,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color calculateColor(String productName) {
    switch (productName.toLowerCase()) {
      case 'wallet':
        return AppColors.walletCardColor;
      case 'loan':
        return AppColors.loansCardColor;
      case 'investment':
        return AppColors.investmentCardColor;
      default:
        return AppColors.blueButtonColor;
    }
  }

  String calculateButtonText(String productName) {
    if (productName.toLowerCase() == 'wallet') {
      return 'Withdraw Funds';
    }
    return 'View Details';
  }
}
