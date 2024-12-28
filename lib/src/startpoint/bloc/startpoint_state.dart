part of 'startpoint_bloc.dart';

sealed class StartpointState extends Equatable {
  //const
  //StartpointState();

  late final StartpointUser startpointUser;
  //late final String startpointAppVersion;

  @override
  List<Object> get props => [startpointUser];
  //
}

//initial state
final class StartpointInitial extends StartpointState {
  StartpointInitial() {
    super.startpointUser = StartpointUser.empty;
  }
  //
  @override
  List<Object> get props => [super.startpointUser];
  //
}

//bootstrapped state
final class StartpointBootstrappedState extends StartpointState {
  //
  StartpointBootstrappedState({
    required this.startpointUserX,
  }) {
    super.startpointUser = startpointUserX;
  }
  //
  final StartpointUser startpointUserX;
  //
  @override
  List<Object> get props => [super.startpointUser];
  //
  //copywith
  //
}
