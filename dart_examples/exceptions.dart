void main(List<String> args) {
  // // final number = double.tryParse('9.99String');
  // try {
  //   final number = double.parse('9.99String');
  //   print(number);
  // } on FormatException catch (e, stackTrace) {
  //   print('Format error bro :c');
  //   print(e);
  //   print(stackTrace);
  // } on RangeError {
  //   print('Range error bro :c');
  // } catch (e, stackTrace) {
  //   print(e);
  //   print(stackTrace);
  // } finally {
  //   print('I just finish');
  // }

  // try {
  //   print(''.toDouble());
  // } catch (e) {
  //   print(e);
  // }
  print(''.toDouble());
}

extension StringX on String {
  double toDouble() {
    if (this.isEmpty) {
      throw EmptyStringException();
    }
    return double.parse(this);
  }
}

class EmptyStringException implements Exception {
  @override
  String toString() {
    return 'Invaaaaaaaaaaaaaaaaaaaalid';
  }
}
