// STREAMS in flutter

/*

X -> value/object whatever that is returned

future => |-------1sec------- X|
// can even return multiple values
stream => |-----1sec-----X-----1sec------x------1sec-------x------1sec-----x------1sec-----xxx|
// waitng and values, mix and match
*/

void main(List<String> args) async {
  await for(final value in getNumbers()){
    print(value);
  }

  try {
    await for(final val in getNames()){
      print(val);
    }
  } catch (e){
    print(e);
  }
}

List<String> names() => ["John", "Doe"];


// start -> 1sec delay -> 0 -> 1sec delay -> 1 .....
Stream<int> getNumbers() async* {
  for(var i = 0 ; i < 10 ; i++){
    await Future.delayed(
      Duration(milliseconds: 100),
    );
    yield i;
  }
  yield 99;
}


Stream<String> getNames() async*{
  await Future.delayed(Duration(seconds: 1));
  yield "John";
  throw Exception("Something went wrong");
  yield "ruh"; // dead code lol

}