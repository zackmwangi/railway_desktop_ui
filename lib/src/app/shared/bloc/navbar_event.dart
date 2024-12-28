part of 'navbar_bloc.dart';

sealed class NavbarEvent extends Equatable {
  const NavbarEvent();

  @override
  List<Object> get props => [];
}

class SelectHomeNavbarEvent extends NavbarEvent {}

class SelectFavsNavbarEvent extends NavbarEvent {}

class SelectOrdersNavbarEvent extends NavbarEvent {}

class SelectMessagesNavbarEvent extends NavbarEvent {}

class SelectCartNavbarEvent extends NavbarEvent {}
