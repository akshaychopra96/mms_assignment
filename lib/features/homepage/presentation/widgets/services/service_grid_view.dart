import 'package:flutter/material.dart';
import 'package:mms_assignment/features/homepage/domain/entities/service_entity.dart';
import 'package:mms_assignment/features/homepage/presentation/widgets/services/service_grid_view_item.dart';

class ServicesGridView extends StatelessWidget {
  const ServicesGridView({
    Key? key,
    required this.serviceList,
  }) : super(key: key);

  final List<ServiceEntity> serviceList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: serviceList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.2,
      ),
      itemBuilder: ((context, index) {
        final service = serviceList[index];
        return ServiceGridViewItem(serviceName: service.serviceName);
      }),
    );
  }
}
