import 'package:dartz/dartz.dart';
import 'package:mms_assignment/core/errors/failures.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_response_entity.dart';

abstract class HomepageRepository {
  Future<Either<Failure, HomepageDataEntity>> getHomepageData();
}
