void main(List<String> args) {
  final email = 'mail@domain.con';

  if (email.isValidEmail) {
    print('Domain: ${email.emailDomain}');
  }
}

extension StringX on String {
  bool get isValidEmail {
    return this.contains('@');
  }

  String get emailDomain {
    return this.substring(this.indexOf('@'), this.length);
  }
}
