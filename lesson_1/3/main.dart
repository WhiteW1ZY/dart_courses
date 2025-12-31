import 'classes/bicycle.dart';
import 'classes/car.dart';
import 'classes/enums/engine_status.dart';

void main() { 

  var car = Car(120, "белая");
  car.color = "вишневая";

  car.speed = 20; 
  car.drive(); 
  car.drive();
  print(car);
  car.speed = 0;
  car.speed = 40;
  car.drive();
  car.speed = 220;   
  car.stop();
  car.stop();
  print(car);

  var byke = Bicycle(25, "белый");

  byke.color = "черный";

  byke.speed = 10; 
  byke.drive(); 
  byke.engineStatus = EngineStatus.running;
  print(byke); 
  byke.speed = 0;
  byke.speed = 20;
  byke.engineStatus = EngineStatus.running;
  byke.speed = 20; 
  byke.engineStatus = EngineStatus.off;
  byke.stop();

  print(byke);

}