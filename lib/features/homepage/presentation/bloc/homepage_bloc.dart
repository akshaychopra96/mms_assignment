import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mms_assignment/core/usecases/use_case.dart';
import 'package:mms_assignment/features/homepage/domain/entities/homepage_data_entity.dart';
import 'package:mms_assignment/features/homepage/domain/usecases/get_homepage_data_use_case.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc({required this.getHomepageDataUseCase})
      : super(HomepageInitial()) {
    on<HomepageEvent>(_getHomepageDataEvent);
  }

  final GetHomepageDataUseCase getHomepageDataUseCase;

  FutureOr<void> _getHomepageDataEvent(
      HomepageEvent event, Emitter<HomepageState> emit) async {
    emit(LoadingHomepageState());
    final resultOrFailure = await getHomepageDataUseCase(NoParams());
    emit(resultOrFailure.fold(
      (failure) =>
          const ErrorHomepageState(message: 'Failed Due to : <Reason>'),
      (result) => LoadedHomepageDataState(response: result),
    ));
  }
}
