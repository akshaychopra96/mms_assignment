import 'package:dartz/dartz.dart';
import 'package:mms_assignment/core/errors/failures.dart';
import 'package:mms_assignment/core/usecases/use_case.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/features/homepage/domain/repositories/homepage_repository.dart';

class GetHomepageDataUseCase extends UseCase<HomepageDataEntity, NoParams> {
  final HomepageRepository repository;

  GetHomepageDataUseCase({
    required this.repository,
  });

  @override
  Future<Either<Failure, HomepageDataEntity>> call(NoParams params) {
    final response = repository.getHomepageData();
    return response;
  }
}
