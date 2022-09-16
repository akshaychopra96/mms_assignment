import 'package:mms_assignment/features/homepage/data/models/homepage_data_model.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_response_entity.dart';

class HomepageResponseModel extends HomepageResponseEntity {
  const HomepageResponseModel({required super.homepageDataList});

  factory HomepageResponseModel.fromJson(List data) {
    List<HomepageDataModel> homepageDataList = [];
    for (int i = 0; i < data.length; i++) {
      final homepageData = HomepageDataModel.fromJson(data[0]);
      homepageDataList.add(homepageData);
    }

    return HomepageResponseModel(homepageDataList: homepageDataList);
  }
}
