import 'Vechile.dart';
import 'enums/engine_status.dart';

class Bicycle extends Vechile {
  int _speedLimit;
  int _speed; 
  String _color; 
  EngineStatus _engineStatus;

  int get speedLimit => _speedLimit;
  int get speed => _speed;
  String get color => _color;
  EngineStatus get engineStatus => _engineStatus; 

  void set speed(int wishedSpeed) { 
    if(_engineStatus == EngineStatus.off) {
      print("Не удалось изменить скорость пока велосипед не в движении");
      return;
    } 
    else if(wishedSpeed <= 0) {
      print("Попытка снижения скорости..");
      stop();
      return;
    }
    
    if(wishedSpeed > speedLimit) {
      print("Попытка серьезно разогнаться..");
      _speed = _speedLimit;
    } 
    else {
      _speed = wishedSpeed;
    }
    print("Велосипед цвета $color успешно изменил скорость на $speed км/ч"); 
  } 

  void set color(String wishedColor) {
    print("Велосипед цвета $color перекрашен в цвет $wishedColor");
    _color = wishedColor;
  }

  void set engineStatus(EngineStatus wishedEngineStatus) {
    wishedEngineStatus == EngineStatus.running
    ? drive()
    : stop();
  }

  Bicycle(this._speedLimit, this._color) : 
    _speed = 0, 
    _engineStatus = EngineStatus.off { 
      print("На дорогах появился новый велосипед цвета $color");
  }
   
  @override
  void drive() {
    if(_engineStatus == EngineStatus.running) {
      print("Велосипед уже в движении");
      return;
    }
    _engineStatus = EngineStatus.running;
    _speed = 5;
    print("Велосипед цвета $color начал движение со скоростью $speed км/ч");
  }
  
  @override
  void stop() {
    if(_engineStatus == EngineStatus.off) {
      print("Велосипед уже прекратил движение");
      return;
    }
    _speed = 0;
    _engineStatus = EngineStatus.off;
    print("Велосипед цвета $color прекратил движение");
  }

  @override 
  String toString() => "Велосипед цвета $color ${
    engineStatus == EngineStatus.off
    ? "стоит на месте"
    : "вижется со скоростью $speed км/ч"
  }";
}