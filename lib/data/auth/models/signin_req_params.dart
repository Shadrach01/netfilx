class SignInReqParams {
  final String email;
  final String password;

  const SignInReqParams({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}
