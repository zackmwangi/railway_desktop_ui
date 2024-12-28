part of 'connectivity_bloc.dart';

sealed class ConnectivityEvent extends Equatable {
  //
  ConnectivityEvent();
  //
  //@override
  final ConnectivityResult connectionType = ConnectivityResult.none;

  //@override
  final List<ConnectivityResult> connectivityResultList = [
    ConnectivityResult.none
  ];

  @override
  List<Object> get props => [];
  //List<Object> get props => [connectionType];
  //
}

class InitializeConnectivityEvent extends ConnectivityEvent {
  //InitializeConnectivityEvent({required this.connectivityResultList});
  InitializeConnectivityEvent();
  //
  //@override
  //final List<ConnectivityResult> connectivityResultList;
}

class ReloadConnectivityEvent extends ConnectivityEvent {
  //ReloadConnectivityEvent({required this.connectivityResultList});
  ReloadConnectivityEvent();
  //
  //@override
  //final List<ConnectivityResult> connectivityResultList;
}

/*
class DisconnectConnectivityEvent extends ConnectivityEvent {}

class ReconnectConnectivityEvent extends ConnectivityEvent {}
*/

class ConnectedMobileEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.mobile;
}

class ConnectedWifiEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.wifi;
}

class ConnectedEthernetEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.ethernet;
}

class ConnectedVpnEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.vpn;
}

class ConnectedBluetoothEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.bluetooth;
}

class ConnectedOtherEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.other;
}

//class ConnectedNoneEvent extends ConnectivityEvent {}
class DisconnectedEvent extends ConnectivityEvent {
  @override
  final ConnectivityResult connectionType = ConnectivityResult.none;
}
