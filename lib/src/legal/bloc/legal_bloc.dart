import '../../../../util/service_locator.dart';

part 'legal_event.dart';
part 'legal_state.dart';

class LegalBloc extends Bloc<LegalEvent, LegalState> {
  LegalBloc() : super(LegalInitial()) {
    //
    /*
    on<LegalEvent>((event, emit) {
      // TODO: implement event handler
    });
    */

    //InitializeLegalEvent
    on<UpdateLegalEvent>((event, emit) {
      emit(LegalBootstrappedState(
        acceptedTermsX: event.acceptedTerms,
        acceptedTermsVersionX: event.acceptedTermsVersion,
      ));
      //
    });
  }
}
