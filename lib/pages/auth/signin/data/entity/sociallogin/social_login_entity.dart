class SocialLoginEntity {
  final String firebaseToken;
  final String uid;
  final String? email;
  final String? name;
  final String? photoUrl;
  final SocialLoginProvider provider;

  const SocialLoginEntity({
    required this.firebaseToken,
    required this.uid,
    this.email,
    this.name,
    this.photoUrl,
    required this.provider,
  });
}

enum SocialLoginProvider {
  google,
  apple,
}
