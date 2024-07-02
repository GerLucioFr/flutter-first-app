import 'dart:math';

void main(List<String> args) {
  final result = login();

  switch (result) {
    case Success():
      print(result.data);
    case Failure():
      print(result.error);
  }
  // or
  switch (login()) {
    case Success(data: final data):
      print(data);
    case Failure(error: final error):
      print(error);
  }
  // or
  switch (login()) {
    case Success<String, String> success:
      print(success.data);
    case Failure<String, String> failure:
      print(failure.error);
  }
}

Result<String, String> login() {
  final integer = Random().nextInt(10);
  return integer % 2 == 0 ? Success(data: '123456') : Failure(error: 'Error');
}

// Result login() {
//   final integer = Random().nextInt(10);
//   return integer % 2 == 0
//       ? Success(token: '123456')
//       : Failure(message: 'Error');
// }

sealed class Result<S, F> {}

class Success<S, F> extends Result<S, F> {
  final S data;

  Success({required this.data});
}

class Failure<S, F> extends Result<S, F> {
  final F error;
  Failure({required this.error});
}

// class Success extends Result {
//   final String token;

//   Success({required this.token});
// }

// class Failure extends Result {
//   final String message;
//   Failure({required this.message});
// }
