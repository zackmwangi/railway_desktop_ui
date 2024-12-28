/*
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
*/
//
import 'dart:developer' as dev;
import '../../service_locator.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc({required this.connectivity})
      : super(const ConnectivityInitial()) {
    connectivityStatusSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) async {
      await setConnectionStatusFromResultsList(connectivityResult);
    });
    //

    on<InitializeConnectivityEvent>((event, emit) async {
      //Read current connection
      try {
        //
        List<ConnectivityResult> connectivityResult =
            await connectivity.checkConnectivity();
        await setConnectionStatusFromResultsList(connectivityResult);
        //
      } on PlatformException catch (e) {
        //
        dev.log('Couldn\'t get platform connectivity status', error: e);
        emit(ConnectivityError(errorMessage: e.message!));
        //
      }
    });

    on<ReloadConnectivityEvent>((event, emit) async {
      //Read current connection
      //
      try {
        //
        List<ConnectivityResult> connectivityResult =
            await connectivity.checkConnectivity();
        await setConnectionStatusFromResultsList(connectivityResult);
        //
      } on PlatformException catch (e) {
        //
        dev.log('Couldn\'t check connectivity status', error: e);
        emit(ConnectivityError(errorMessage: e.message!));
        //
      }
      //
    });
    //
    //
    /*
    on<DisconnectConnectivityEvent>((event, emit) {
      // Set connection list to none
    });

    on<ReconnectConnectivityEvent>((event, emit) {
      // Reload connections
    });
    */
    //
    //
    //#######################
    //Connection - Mobile
    on<ConnectedMobileEvent>((event, emit) {
      emit(const ConnectivityConnected(
          connectionType: ConnectivityResult.mobile));
    });

    //Connection - Wifi
    on<ConnectedWifiEvent>((event, emit) {
      emit(
          const ConnectivityConnected(connectionType: ConnectivityResult.wifi));
    });
    //
    //Connection - Ethernet
    on<ConnectedEthernetEvent>((event, emit) {
      emit(const ConnectivityConnected(
          connectionType: ConnectivityResult.ethernet));
    });
    //
    //Connection - VPN
    on<ConnectedVpnEvent>((event, emit) {
      emit(const ConnectivityConnected(connectionType: ConnectivityResult.vpn));
    });

    //Connection - Bluetooth
    on<ConnectedBluetoothEvent>((event, emit) {
      emit(const ConnectivityConnected(
          connectionType: ConnectivityResult.bluetooth));
    });

    //Connection - Other
    on<ConnectedOtherEvent>((event, emit) {
      emit(const ConnectivityConnected(
          connectionType: ConnectivityResult.other));
    });

    //No connection/Disconnect
    on<DisconnectedEvent>((event, emit) {
      emit(const ConnectivityDisconnected());
    });

    //#######################
    //
    //
  }

  late StreamSubscription<List<ConnectivityResult>>
      connectivityStatusSubscription;
  //
  Connectivity connectivity;

  //late StreamSubscription connectivityStatusSubscription;
  //
  /*
  late StreamSubscription<List<ConnectivityResult>>
      connectivityStatusSubscription;
  */
  //

  //
  Future<void> setConnectionStatusFromResultsList(
      List<ConnectivityResult> connectivityResult) async {
    //
    print(
        "setConnectionStatusFromResultsList: setting conn from list $connectivityResult");
    //################################################################
    //await setConnectionStateFromConnectivityType();
    //##########
    //
    if (connectivityResult.contains(ConnectivityResult.none)) {
      //No connection
      await setConnectionStateFromConnectivityType(ConnectivityResult.none);
      //
    } else if (connectivityResult.contains(ConnectivityResult.mobile)) {
      //Mobile Network
      await setConnectionStateFromConnectivityType(ConnectivityResult.mobile);
    } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
      //Wifi Network
      await setConnectionStateFromConnectivityType(ConnectivityResult.wifi);
    } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
      // Ethernet connection available.
      await setConnectionStateFromConnectivityType(ConnectivityResult.ethernet);
    } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
      // Vpn connection active.
      // Note for iOS and macOS:
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
      await setConnectionStateFromConnectivityType(ConnectivityResult.vpn);
      //
    } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
      // Bluetooth connection available.
      await setConnectionStateFromConnectivityType(
          ConnectivityResult.bluetooth);
    } else if (connectivityResult.contains(ConnectivityResult.other)) {
      // Connected to a network which is not in the above mentioned networks.
      await setConnectionStateFromConnectivityType(ConnectivityResult.other);
    }
    //
    return;
    //################################################################
    //
  }

  Future<void> setConnectionStateFromConnectivityType(
      ConnectivityResult connectivityType) async {
    //
    print(
        "setConnectionStateFromConnectivityType: Setting connectivity state to ${connectivityType}");

    //################################################################
    switch (connectivityType) {
      //
      //Mobile
      case ConnectivityResult.mobile:
        add(ConnectedMobileEvent());
      //Wifi
      case ConnectivityResult.wifi:
        add(ConnectedWifiEvent());
      //Ethernet
      case ConnectivityResult.ethernet:
        add(ConnectedEthernetEvent());
      //Vpn
      case ConnectivityResult.vpn:
        add(ConnectedVpnEvent());
      //BT
      case ConnectivityResult.bluetooth:
        add(ConnectedBluetoothEvent());
      //Other
      case ConnectivityResult.other:
        add(ConnectedOtherEvent());
      //Default
      //None
      case ConnectivityResult.none:
      default:
        add(DisconnectedEvent());
        break;
      //
    }
    //
    return;
    //################################################################
    //
  }

  //
  @override
  Future<void> close() async {
    super.close();
    connectivityStatusSubscription.cancel();
    //connectivity.dispose();
    //
  }
}
