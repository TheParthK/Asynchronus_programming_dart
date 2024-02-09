// error handling

import 'dart:async';

void main(List<String> args) async {
  print(await getName(firstName: '', lastName: 'Doe'));
}


Future<String> getName({
  required String firstName,
  required String lastName,
}){
  if(firstName.isEmpty || lastName.isEmpty){
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception{
  const FirstOrLastNameMissingException();
}