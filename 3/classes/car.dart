import 'enums/engine_status.dart';
import 'Vechile.dart';

class Car extends Vechile { 
  int _speedLimit;
  int _speed; 
  String _color; 
  EngineStatus _engineStatus;

  int get speedLimit => _speedLimit;
  int get speed => _speed;
  String get color => _color;

  void set speed(int wishedSpeed) {  
    if(_engineStatus == EngineStatus.off) {
      print("Не удалось изменить скорость пока не заведен двигатель");
      return;
    }
    else if(wishedSpeed <= 0) {
      print("Попытка снижения скорости привела к заглушению двигателя..");
      stop();
      return;
    } 

    if(wishedSpeed > speedLimit) {
      print("Машина разгоняется до предельной скорости..");
      _speed = _speedLimit;
    } 
    else {
      _speed = wishedSpeed;
    } 
    print("Машина цвета $color успешно изменила скорость на $speed км/ч");

  } 

  void set color(String wishedColor) {
    print("Машина цвета $color перекрашена в цвет $wishedColor");
    _color = wishedColor;
  }

  Car(this._speedLimit, this._color) : 
    _speed = 0, 
    _engineStatus = EngineStatus.off { 
      print("На дорогах появилась новая машина цвета $color");
  }

  void drive() {
    if(_engineStatus == EngineStatus.running) {
      print("Машина уже заведена");
      return;
    }
    _engineStatus = EngineStatus.running;
    _speed = 10;
    print("Машина цвета $color начала движение со скоростью $speed км/ч");
  }
  
  void stop() {
    if(_engineStatus == EngineStatus.off) {
      print("Машина уже заглушена");
      return;
    }
    _speed = 0;
    _engineStatus = EngineStatus.off;
    print("Машина цвета $color прекратила движение");
  }

  @override 
  String toString() => "Машина цвета $color ${
    _engineStatus == EngineStatus.off
    ? "стоит на месте"
    : "движется со скоростью $speed км/ч"
  }";

}