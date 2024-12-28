import '../../../util/service_locator.dart';

part 'startpoint_event.dart';
part 'startpoint_state.dart';

class StartpointBloc extends Bloc<StartpointEvent, StartpointState> {
  StartpointBloc() : super(StartpointInitial()) {
    /*
    on<StartpointEvent>((event, emit) {
      // TODO: implement event handler
    });
    */

    //Initialize Start state on App startup
    //(from json)
    //?(shared pref?)
    on<InitializeStartpointEvent>((event, emit) async {
      late StartpointUser startpointUserFromFile;
      //Read Local Cache/Shared Pref
      await Future<void>.delayed(const Duration(milliseconds: 2000));
      // set to whats on local cache/shared prefs/secure storages
      //
      bool startpointUserFound = false;

      //
      if (startpointUserFound) {
        /*
        String acceptedTermsVersionString = 'v1.5.3';
        //
        startpointUserFromFile = StartpointUser(
          uid: 'uuif-za',
          email: 'zackmwangi@gmail.com',
          accountLastLogin: '09-08-2024 11:03:05',
          acceptedTermsVersion: acceptedTermsVersionString,
          acceptedPrivacyPolVersion: 'v1.3.5',
          acceptedCommunityPolVersion: 'v1.3.3',
        );
        //
        //#########
        //
        //If current terms agreed upon already, set the terms as agreed upon
        //
        LegalBloc legalBloc = getIt<LegalBloc>();
        legalBloc.add(
          UpdateLegalEvent(
            acceptedTerms: true,
            acceptedTermsVersion: acceptedTermsVersionString,
          ),
        );
        //
        //#########
        */
        //
      } else {
        startpointUserFromFile = StartpointUser.empty;
        //terms not agreed upon, by default
      }

      emit(
        StartpointBootstrappedState(startpointUserX: startpointUserFromFile),
      );
    });
    //
    /*
    //Set StartpointUser after user login
    on<UpdateStartpointEvent>((event, emit) {
      //do a state update:copywith s
    });
    */
    //
  }
}
