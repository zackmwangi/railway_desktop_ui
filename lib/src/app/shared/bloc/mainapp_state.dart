part of 'mainapp_bloc.dart';

sealed class MainappState extends Equatable {
  const MainappState();

  @override
  List<Object> get props => [];
}

final class MainappInitial extends MainappState {}

final class MainappInitializing extends MainappState {}

final class MainappInitializeSuccess extends MainappState {}

final class MainappInitializeError extends MainappState {}
