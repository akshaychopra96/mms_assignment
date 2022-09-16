part of 'homepage_bloc.dart';

abstract class HomepageState extends Equatable {
  const HomepageState();

  @override
  List<Object> get props => [];
}

class HomepageInitial extends HomepageState {}

class LoadingHomepageState extends HomepageState {}

class LoadedHomepageDataState extends HomepageState {
  final HomepageDataEntity response;

  const LoadedHomepageDataState({required this.response});
}

class ErrorHomepageState extends HomepageState {
  final String message;

  const ErrorHomepageState({
    required this.message,
  });

  @override
  List<Object> get props => [
        message,
      ];
}
