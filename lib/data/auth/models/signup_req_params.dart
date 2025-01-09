class SignUpReqParams {
  final String email;
  final String password;

  const SignUpReqParams({
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
