import 'package:flutter/material.dart';

class ServiceGridViewItem extends StatelessWidget {
  const ServiceGridViewItem({super.key, required this.serviceName});
  final String serviceName;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(calculateIcon(serviceName)),
          Text(
            serviceName,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  IconData calculateIcon(String serviceName) {
    switch (serviceName.toLowerCase()) {
      case 'fund':
        return Icons.monetization_on;
      case 'send money':
        return Icons.send_to_mobile_rounded;
      case 'bank transfer':
        return Icons.backpack_outlined;
      case 'loan request':
        return Icons.request_page_outlined;
      case 'airtime':
        return Icons.send_to_mobile_outlined;
      case 'cards':
        return Icons.add_card_sharp;
      default:
        return Icons.device_unknown;
    }
  }
}
