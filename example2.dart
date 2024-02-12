// error handling

import 'dart:async';

void main(List<String> args) async {

  try{
    print(await getFullName(firstName: 'hahaha', lastName: 'Doe'));
    print(await getFullName(firstName: '', lastName: 'Doe'));

  } on FirstOrLastNameMissingException {
    print('First or last name missing!');
  }
}


Future<String> getFullName({
  required String firstName,
  required String lastName,
  })
  {
    if(firstName.isEmpty || lastName.isEmpty){
      throw FirstOrLastNameMissingException();
    } else {
      return Future.value('$firstName $lastName');
    }
  }

class FirstOrLastNameMissingException implements Exception{
  const FirstOrLastNameMissingException();
}
