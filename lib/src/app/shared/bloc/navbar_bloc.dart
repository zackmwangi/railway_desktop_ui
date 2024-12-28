import '../../../../util/service_locator.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(NavbarInitial()) {
    //Home
    on<SelectHomeNavbarEvent>((event, emit) {
      emit(FeedSelectedState());
    });

    //Favs
    on<SelectFavsNavbarEvent>((event, emit) {
      emit(FavsSelectedState());
    });

    //Orders
    on<SelectOrdersNavbarEvent>((event, emit) {
      emit(OrdersSelectedState());
    });

    //Messages
    on<SelectMessagesNavbarEvent>((event, emit) {
      emit(MessagesSelectedState());
    });

    //Profile
    on<SelectCartNavbarEvent>((event, emit) {
      emit(CartSelectedState());
    });
  }
}
