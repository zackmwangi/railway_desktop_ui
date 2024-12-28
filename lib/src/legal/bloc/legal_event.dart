part of 'legal_bloc.dart';

sealed class LegalEvent extends Equatable {
  const LegalEvent();

  @override
  List<Object> get props => [];
}

class UpdateLegalEvent extends LegalEvent {
  const UpdateLegalEvent({
    required this.acceptedTerms,
    required this.acceptedTermsVersion,
  });

  final bool acceptedTerms;
  final String acceptedTermsVersion;
}
