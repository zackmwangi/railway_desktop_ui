import '../../../../util/service_locator.dart';

part 'mainapp_event.dart';
part 'mainapp_state.dart';

class MainappBloc extends Bloc<MainappEvent, MainappState> {
  MainappBloc() : super(MainappInitial()) {
    on<MainappInitializeDataEvent>(
      (event, emit) async {
        //
        emit(MainappInitializing());

        //
        emit(MainappInitializeSuccess());
        //
      },
    );
  }
}
