void main() {
  Map<String, Object> person = Map();
  Map<String, Object> personTwo = {
    'id': '2',
    'firstName': 'Lionel',
    'lastName': 'Messi'
  };
  final Map<String, Object> personThree = Map();
  Map<String, Object> personFour = Map();
  person['id'] = '1';
  person['firstName'] = 'Cristiano';
  person['lastName'] = 'Ronaldo';

  final hasKey = person.containsKey('id');

  if (!person.containsKey('age')) {
    person['age'] = 39;
  }
  // or
  personTwo.putIfAbsent('age', () => 36);

  personThree.addAll({
    'id': '3',
    'firstName': 'Luka',
    'lastName': 'Modric',
    'teams': {'club': 'Real Madrid', 'country': 'Croatia'}
  });

  print((personThree['teams'] as Map<String, Object>)['club']);
  // or
  final teams = personThree['teams'];
  if (teams is Map<String, Object>) {
    print(teams['club']);
  }

  print(hasKey);
  print(person);
  print(personTwo);
  print(personThree);

// if element is null, you can add ? in spred operator, example: final list2 = [...?list1, 6, 7, 8];
  final list1 = [1, 2, 3, 4];
  final list2 = [...list1, 6, 7, 8, 9];
  personFour = {
    ...personThree,
    ...{'goals': 90},
    'isRetired': false
  };
  print(list2);
  print(personFour);
}
