void main(List<String> args) async{
  await for(final i in getCharacters('Hello World!')){
    print(i);
  }
}


Stream<String> getCharacters(String s) async* {
  for(var i = 0 ; i < s.length ; i ++){
    await Future.delayed(Duration(milliseconds: 300), ()=>{});
    yield s[i];
  }
  yield '\nDone';
}