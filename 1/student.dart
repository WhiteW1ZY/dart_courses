import 'dart:math';

void main() {
  const studentsCount = 5;
  final studentGenerator = StudentGenerator();
  final students = studentGenerator.generateStudents(studentsCount);

  final studentSort = StudentSort();

  print("unsorted students: $students");
  studentSort.sortStudentsByGPA(students);
  print("sorted students: $students");
}

class StudentGenerator {
  final _names = [
    "Ибрагим",
    "Махмед",
    "Михаил",
    "Николай",
    "Григорий",
    "Василий"
  ];

  final _ages = List<int>.generate(5, (int index) => index + 20);
  final _gradePointsAverage = List<double>.generate(50, (int index) => (index + 50) / 10);

  List<Student> generateStudents(int count) {
    final rng = Random(); 
    final List<Student> students = [];
    for(int iteration = 0; iteration < count; iteration ++) {
      final name = _names[rng.nextInt(_names.length - 1)];
      final age = _ages[rng.nextInt(_ages.length - 1)];
      final gradePointAverage = _gradePointsAverage[rng.nextInt(_gradePointsAverage.length - 1)];
      final student = Student(name: name, age: age, gradePointAverage: gradePointAverage);
      students.add(student);
    } 
    return students;
  }
}

class StudentSort {
  void sortStudentsByGPA(List<Student> students) =>
    students.sort((first, second) => second.gradePointAverage.compareTo(first.gradePointAverage));  
}

class Student {
  final String name;
  final int age;
  final double gradePointAverage;

  const Student({required this.name, required this.age, required this.gradePointAverage});

  @override
  String toString() => "name: $name, age: $age, GPA: $gradePointAverage";

  Student copy() {
    return Student(name: this.name, age: this.age, gradePointAverage: this.gradePointAverage);
  }
}