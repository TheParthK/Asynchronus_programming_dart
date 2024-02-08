void main(List<String> args) async{
  // print("Hello World!");
  // final name1 = getName();
  // final name2 = getName();
  // print(name1);
  // print(name2);
  print(await getUserName());
  print(await getAddress());
  print('Get Phone no called: ');
  print(await getPhoneNo());
  print('Get City called: ');
  print(await getCity());
  print('Get Country called: ');
  print(await getCountry());
  print('Get zip code called: ');
  print(await getZIPcode());

  // to use await, the function await is used in must be await
  // await dissolves and resolves a future function
}

String getName() => "Randomass Sample Function that returns a string";


// Future<String> getUserName() async {
//   // do some async work
//   return "John DOE";
// }


Future<String> getUserName() async => 'John DOw';

Future<String> getAddress() => Future.value('123 Main St.');

Future<String> getPhoneNo() => Future<String>.delayed(
  const Duration(seconds: 1),
  () => "555-555-5555"
);

Future<String> getCity() async{
  await Future.delayed(const Duration(seconds: 1), () => {});
  // doesnt work if await keyword isnt being used, await is used to kickstart future functions
  return "New York";
}

// Future<String> getCountry()  => Future.value("India");
Future<String> getCountry()  async => "India";


// async keyword doesnt contribute to anything
Future<String> getZIPcode() /*async*/ => Future.delayed(const Duration(seconds: 1), () => '12345');
// async -> raw value of this type (String) or used await within function