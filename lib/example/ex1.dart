import 'dart:io';

void main() {
  int muc1 = 5973;
  int muc2 = 7052;
  int muc3 = 8669;
  int muc4 = 15929;
  print('Enter your salary: ');
  int salary = int.parse(stdin.readLineSync() ?? '');

  print('tổng tiền nước: ${10 * muc1 + 10 * muc2 + 10 * muc3 + 100 * muc4}');
  // if (salary <= 10) {
  //   print('Tien dien muc 1: ${10 * muc1}');
  // } else if (salary >= 10 && salary <= 20) {
  //   print('Tien dien muc 2: ${10 * muc2}');
  // } else if (salary >= 20 && salary <= 30) {
  //   print('Tien dien muc 3: ${10 * muc3}');
  // } else if (salary > 30) {
  //   print('Tien dien muc 4: ${100 * muc4}');
  // }

  // switch (salary) {
  //   case 'a':
  //     print('Your salary get target A: ${salary + a}');
  //   case 'b':
  //     print('Your salary get target B: ${salary + b}');
  //   default:
  //     print('Your salary get target C: ${salary + c}');
  // }
  // print(
  //     '${salary < 100 ? "Free ve nheeee" : " mua ve diii"}'); // conditional expressions
}
