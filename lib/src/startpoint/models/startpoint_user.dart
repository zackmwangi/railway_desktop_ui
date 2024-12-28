import '../../../util/service_locator.dart';

class StartpointUser extends Equatable {
  //
  const StartpointUser({
    required this.uid,
    required this.email,
    required this.accountLastLogin,
    required this.acceptedTermsVersion,
    required this.acceptedPrivacyPolVersion,
    required this.acceptedCommunityPolVersion,
  });
  //
  final String uid;
  final String email;
  final String accountLastLogin;
  final String acceptedTermsVersion;
  final String acceptedPrivacyPolVersion;
  final String acceptedCommunityPolVersion;
  //
  static const empty = StartpointUser(
    uid: '',
    email: '',
    accountLastLogin: '',
    acceptedTermsVersion: '',
    acceptedPrivacyPolVersion: '',
    acceptedCommunityPolVersion: '',
  );
  //
  bool get isEmpty => this == StartpointUser.empty;
  bool get isNotEmpty => this != StartpointUser.empty;
  //
  StartpointUser copyWith({
    String? suppliedUid,
    String? suppliedEmail,
    String? suppliedAccountLastLogin,
    String? suppliedAcceptedTermsVersion,
    String? suppliedAcceptedPrivacyPolVersion,
    String? suppliedAcceptedCommunityPolVersion,
  }) {
    return StartpointUser(
      uid: suppliedUid ?? uid,
      email: suppliedEmail ?? email,
      accountLastLogin: suppliedAccountLastLogin ?? accountLastLogin,
      acceptedTermsVersion:
          suppliedAcceptedTermsVersion ?? acceptedTermsVersion,
      acceptedPrivacyPolVersion:
          suppliedAcceptedPrivacyPolVersion ?? acceptedPrivacyPolVersion,
      acceptedCommunityPolVersion:
          suppliedAcceptedCommunityPolVersion ?? acceptedCommunityPolVersion,
    );
  }

  //
  factory StartpointUser.fromJson(Map<String, dynamic> json) {
    return StartpointUser(
      uid: json["uid"].toString(),
      email: json["email"].toString(),
      accountLastLogin: json["accountLastLogin"].toString(),
      acceptedTermsVersion: json["acceptedTermsVersion"].toString(),
      acceptedPrivacyPolVersion: json["acceptedPrivacyPolVersion"].toString(),
      acceptedCommunityPolVersion:
          json["acceptedCommunityPolVersion"].toString(),
    );
  }
  //
  Map<String, dynamic> toJson() {
    Map<String, dynamic> startpointUserJson = {
      'uid': uid,
      'email': email,
      'accountLastLogin': accountLastLogin,
      'acceptedTermsVersion': acceptedTermsVersion,
      'acceptedPrivacyPolVersion': acceptedPrivacyPolVersion,
      'acceptedCommunityPolVersion': acceptedCommunityPolVersion,
    };
    //
    return startpointUserJson;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    uid,
    email,
    accountLastLogin,
    acceptedTermsVersion,
    acceptedPrivacyPolVersion,
    acceptedCommunityPolVersion,
  ];
}
