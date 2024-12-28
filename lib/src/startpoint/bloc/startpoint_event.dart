part of 'startpoint_bloc.dart';

sealed class StartpointEvent extends Equatable {
  const StartpointEvent();

  @override
  List<Object> get props => [];
}

class InitializeStartpointEvent extends StartpointEvent {}
//
/*
class UpdateStartpointEvent extends StartpointEvent {}
*/
