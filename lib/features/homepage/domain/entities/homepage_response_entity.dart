import 'package:equatable/equatable.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';

//TODO DELete this
class HomepageResponseEntity extends Equatable {
  final List<HomepageDataEntity> homepageDataList;

  const HomepageResponseEntity({required this.homepageDataList});

  @override
  List<Object?> get props => [homepageDataList];
}
