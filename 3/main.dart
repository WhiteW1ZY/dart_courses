import 'dart:math';

void main() {
  const listLength = 10;

  final randomValuesNullableListGenerator = RandomIntValuesNullableListGenerator();
  final numbers = randomValuesNullableListGenerator.generateList(listLength);   

  print("Исходный лист: $numbers"); 

  final nullableIntListCleaner = NullableIntListCleaner();
  nullableIntListCleaner.makeNullEqualZero(numbers);

  print("Преобразованный лист: $numbers"); 
}

class NullableIntListCleaner {
  void makeNullEqualZero(List<int?> nullableList) {
    for(var iteration = 0; iteration < nullableList.length; iteration++) {
      if(nullableList[iteration] == null) {
        nullableList[iteration] = 0;
      }
    }
  }
}

class RandomIntValuesNullableListGenerator {
  List<int?> generateList(int listCapacity) {
    final List<int?> numbers = []; 
    var rng = Random();

    for(var iteration = 0; iteration < listCapacity; iteration++) {
      if(rng.nextBool()) {
        numbers.add(null);
      }
      else {
        numbers.add(rng.nextInt(100) - 50);
      }
    }  
    return numbers;
  }
}