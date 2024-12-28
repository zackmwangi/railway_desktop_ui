part of 'connectivity_bloc.dart';

sealed class ConnectivityState extends Equatable {
  //const ConnectivityState({required connectionType});
  const ConnectivityState({required this.connectionType});
  //
  final ConnectivityResult connectionType; // =

  @override
  //List<Object> get props => [];
  List<Object> get props => [connectionType];
}

final class ConnectivityInitial extends ConnectivityState {
  //
  //const ConnectivityInitial({required super.connectionType});
  //
  const ConnectivityInitial() : super(connectionType: ConnectivityResult.none);
  //
  @override
  //final ConnectivityResult connectionType;
  final ConnectivityResult connectionType = ConnectivityResult.none;
}

final class ConnectivityConnected extends ConnectivityState {
  //
  //const ConnectivityConnected({required super.connectionType});
  const ConnectivityConnected({required this.connectionType})
      : super(connectionType: connectionType);
  //
  @override
  final ConnectivityResult connectionType;
  //
}

final class ConnectivityDisconnected extends ConnectivityState {
  //
  const ConnectivityDisconnected()
      : super(connectionType: ConnectivityResult.none);
  //
  @override
  final ConnectivityResult connectionType = ConnectivityResult.none;
  //
}

final class ConnectivityError extends ConnectivityState {
  //
  //const ConnectivityInitial({required super.connectionType});
  //
  const ConnectivityError({required this.errorMessage})
      : super(connectionType: ConnectivityResult.none);
  //
  @override
  //final ConnectivityResult connectionType;
  final ConnectivityResult connectionType = ConnectivityResult.none;
  final String errorMessage;
}
