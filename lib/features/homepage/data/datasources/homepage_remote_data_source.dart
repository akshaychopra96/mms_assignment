import 'dart:convert';

import 'package:mms_assignment/core/errors/exceptions.dart';
import 'package:mms_assignment/features/homepage/data/models/homepage_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';

abstract class HomepageRemoteDataSource {
  Future<HomepageDataEntity> getHomepageData();
}

class HomepageRemoteDataSourceImpl extends HomepageRemoteDataSource {
  final http.Client client;

  HomepageRemoteDataSourceImpl({required this.client});

  @override
  Future<HomepageDataEntity> getHomepageData() async {
    const url = 'https://6322da94362b0d4e7dd4bdd6.mockapi.io/homepage_data';
    final httpResponse = await client.get(
      Uri.parse(url),
    );
    if (httpResponse.statusCode == 200) {
      final jsonResponse = json.decode(httpResponse.body);
      final response = HomepageDataModel.fromJson(jsonResponse);
      return response;
    } else {
      throw ServerException(
          message: 'API Response Failed', errorCode: 'CustomErrorCode');
    }
  }
}
