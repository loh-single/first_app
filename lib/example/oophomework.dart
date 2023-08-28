void main() {
  var student1 = Student('st1', 5, 9);
  var student2 = Student("st2", 7, 4);
  var teacher1 = Teacher(2000, 500);
  var teacher2 = Teacher(3000, 700);
  var person = Person('Long', 'Nam', '0123', 'longmai@gmail.com');

  print('${teacher1.calculateSalary()}');
}

abstract class Person {
  final String name;
  final String gender;
  final String phoneNum;
  final String email;

  Person(this.name, this.gender, this.phoneNum, this.email);

  void purchaseParkingPass() {}
}

class Student extends Person {
  String studentID;
  double theory;
  double practice;

  Student(this.studentID, this.theory, this.practice)
      : super('name', 'gender', 'phoneNum', 'email');

  double calculateFinalMark() {
    return 5;
  }
}

class Teacher extends Person {
  double basicSalary;
  double subsidy;
  Teacher(this.basicSalary, this.subsidy)
      : super('name', 'gender', 'phoneNum', 'email');
  double calculateSalary() {
    return basicSalary + subsidy;
  }
}
