part of 'legal_bloc.dart';

sealed class LegalState extends Equatable {
  //const
  //LegalState();

  late final bool acceptedTerms;
  late final String acceptedTermsVersion;
  //late final bool acceptedPrivacyPol;
  //late final bool acceptedCommunityPol;

  @override
  List<Object> get props => [
        acceptedTerms,
        acceptedTermsVersion,
      ];
}

final class LegalInitial extends LegalState {
  LegalInitial() {
    super.acceptedTerms = false;
    super.acceptedTermsVersion = '';
  }
}

final class LegalBootstrappedState extends LegalState {
  LegalBootstrappedState(
      {required this.acceptedTermsX, required this.acceptedTermsVersionX}) {
    super.acceptedTerms = acceptedTermsX;
    super.acceptedTermsVersion = acceptedTermsVersionX;
  }
  //
  final bool acceptedTermsX;
  final String acceptedTermsVersionX;
}
