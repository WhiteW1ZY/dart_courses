import 'dart:math';

void main() { 
  const count = 20;
  final listGenerator = IntListGenerator();
  final unsortedList = listGenerator.generateList(count);

  final numberListFilter = IntListFilter(); 
  final sortedList = numberListFilter.filterEvenNumbers(unsortedList);

  print(unsortedList);
  print(sortedList);
}

class IntListFilter { 
  List<int> filterEvenNumbers(List<int> unsortedNumbers) => unsortedNumbers.where((number) => number.isEven).toList();
}

class IntListGenerator {
  List<int> generateList(int count) {
    final List<int> numbers = []; 
    final rng = Random();

    for(var iteration = 0; iteration < count; iteration++) {
        numbers.add(rng.nextInt(100) - 50);
    }  
    return numbers;
  }

}