import 'package:mms_assignment/core/errors/exceptions.dart';
import 'package:mms_assignment/core/network/network_info.dart';
import 'package:mms_assignment/features/homepage/data/datasources/homepage_remote_data_source.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:mms_assignment/features/homepage/domain/repositories/homepage_repository.dart';

class HomepageRepositoryImpl extends HomepageRepository {
  final NetworkInfo networkInfo;
  final HomepageRemoteDataSource remoteDataSource;

  HomepageRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, HomepageDataEntity>> getHomepageData() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getHomepageData();
        return Right(response);
      } on ServerException catch (ex) {
        return Left(ServerFailure(message: ex.message, errorCode: ''));
      }
    } else {
      return const Left(
          ServerFailure(message: 'ErrorMessage', errorCode: 'ErrorCode'));
    }
  }
}
