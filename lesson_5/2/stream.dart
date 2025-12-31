import 'dart:async';

Stream<int> generateNumbersAsync(int max) async* {
  for(var iteration = 1; iteration <= max; iteration++) {
    yield await Future.delayed(Duration(seconds: 1), () => iteration); 
  }
}
void main() async{
  final numbers = generateNumbersAsync(5); 
  final streamController = StreamController<int>();

  streamController.stream
    .listen((data) => print("Полученные данные: $data"));

  await for(final number in numbers) {
    streamController.add(number);
  } 
  streamController.close();
}