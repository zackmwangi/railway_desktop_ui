part of 'navbar_bloc.dart';

sealed class NavbarState extends Equatable {
  //const NavbarState();

  late final NavbarSection activeNavbarSection;

  @override
  List<Object> get props => [activeNavbarSection];
}

final class NavbarInitial extends NavbarState {
  NavbarInitial() {
    super.activeNavbarSection = NavbarSection.home;
  }
}

//Home
final class FeedSelectedState extends NavbarState {
  FeedSelectedState() {
    super.activeNavbarSection = NavbarSection.home;
  }
}

//Favs
final class FavsSelectedState extends NavbarState {
  FavsSelectedState() {
    super.activeNavbarSection = NavbarSection.favs;
  }
}

//Orders
final class OrdersSelectedState extends NavbarState {
  OrdersSelectedState() {
    super.activeNavbarSection = NavbarSection.orders;
  }
}

//Messages
final class MessagesSelectedState extends NavbarState {
  MessagesSelectedState() {
    super.activeNavbarSection = NavbarSection.messages;
  }
}

//Cart
final class CartSelectedState extends NavbarState {
  CartSelectedState() {
    super.activeNavbarSection = NavbarSection.cart;
  }
}
