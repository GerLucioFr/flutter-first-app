void main() {
  /**
   * cooments
   */
  int age = 2004;
  double money = 34.56;
  bool isCurrent = false;
  String firstName = 'Juan';
  String lastName = 'Perez';
  String paragraph = '''
Multiple
line
string
''';
  var cart = 'If you use var, compiler assign var type in order to its value';
  Object myClass;
  // immutable var, never change its value
  final DateTime now = DateTime.now();
  /**Difference between final and const: final value does not change but you do not know this value before execution time. 
   * In constant you know its value before excution time  
   * */
  // Constant
  const iva = 0.16;

  dynamic changes = 100;
  changes = 'Ey bro';

  // String username = name + lastName + age.toString();
  String username = '$firstName $lastName $age\80';
  String usernameInit = '${firstName[0]}${lastName[0]}';

  final textLength = printMessage('admin@gmail.com');

  // Nullable values
  String? nullableName = 'Messi';
  nullableName = null;
  // print(nullableName?.length);
  // print(nullableName?.contains('a'));
  // print(nullableName != null);

  int price = 100;
  // It is like price /= (price / 10).toInt();
  price ~/= 10;

  String? name = 'Ey';
  final otherName = name ?? 'No name';
  // print(otherName);

  useCallback(getDay);
  useCallback(() => 'Hola bro');
  useCallbackWithParameter(transformText);
}

int printMessage(String message) {
  final text = 'Message ${message} has ${message.length} characters';
  final isValid = message.contains('admin') &&
      (message.endsWith('@gmail.com') || message.endsWith('@yahoo.com'));
  // print(text.isNotEmpty);
  return message.length;
}

void useCallback(String Function() callback) {
  print(callback());
}

void useCallbackWithParameter(String Function(String text) callback) {
  print(callback('soy texto'));
}

String getDay() => '${DateTime.now().day}';
String transformText(String text) => text.toUpperCase();

String getFullName(String firstName, String lastName) =>
    '${firstName} ${lastName}';
