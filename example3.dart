// Future Chaining

// you have future, it calculates value and that value is fed into another value

void main(List<String> args) async{
  final length = await calculateLength(await getFullName());
  print(length);
  final int length2 = await getFullName().then((fullName) => calculateLength(fullName));
  print(length2);
  getFullName().then((fullName) => calculateLength(fullName).then((value) => print(value)));
}

Future<String> getFullName() => Future.delayed(
    Duration(seconds: 1),
    () => "John Doe"
  );
  
Future<int> calculateLength(String value) => Future.delayed(
    Duration(seconds: 2),
    () => value.length 
  );
