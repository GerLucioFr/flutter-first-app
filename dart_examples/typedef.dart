void main(List<String> args) {
  final List<BigMap<int>> map = [
    {'even': 1}
  ];
  print(map);
}

typedef BigMap<T> = Map<String, T>;
