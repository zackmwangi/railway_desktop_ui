part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

//Google
class AuthLoginWithGoogleEvent extends AuthEvent {}

//FB
class AuthLoginWithFacebookEvent extends AuthEvent {}

//Apple
class AuthLoginWithAppleEvent extends AuthEvent {}

//LinkedIn
class AuthLoginWithLinkedinEvent extends AuthEvent {}
