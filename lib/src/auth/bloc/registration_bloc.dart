import '../../../../util/service_locator.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    //
    on<RegistrationEvent>((event, emit) {
      // TODO: implement event handler
    });
    //

    //Google
    //Facebook
    //Apple
    //Linkedins
    //
  }
}