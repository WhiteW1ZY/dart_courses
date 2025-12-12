import 'dart:async';

class Counter {
  int _count = 0;
  int get count => _count; 
  Stream get stream => _streamController.stream;

  final _streamController = StreamController();

  void increment() { 
    _count++;
    _streamController.add(_count);
  }  

  void decrement() {
    _count--;

    if(_count < 0) {
      _streamController.addError(ArgumentError("Невозможно работать в таких условиях"));
      _streamController.close();
    }
    else {
      _streamController.add(_count);
    }
  } 
}

void main() { 
  final counter = Counter();

  final stream = counter.stream;

  stream.listen((data) =>
    print("Получены данные: $data"),
    onError: (ex) => print("Поток завершен с ошибкой: $ex")
  ); 

  counter.increment();
  counter.increment();

  counter.decrement();
  counter.decrement();
  counter.decrement();
}
