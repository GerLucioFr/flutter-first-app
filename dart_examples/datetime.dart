void main(List<String> args) {
  final date1 = DateTime(1992);
  final date2 = DateTime(1994);
  print(date1.isAtSameMomentAs(date2));
  print(date1 == date2);
  print(date1.isAfter(date2));
  print(date1.isBefore(date2));
  print(date1.isUtc);
}
