import 'dart:io';

double numInput(String prompt) {
  print(prompt);
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}

String operandChoice() {
  print("Choose an operand (+, -, *, /): ");
  String operand = stdin.readLineSync()!;
  return operand;
}

void main() {
  double num1 = numInput("Enter the first number: ");
  double num2 = numInput("Enter the second number: ");
  String choice = operandChoice();
  double answer = 0.0;
  bool validOperation = true;  // to track if the operation is valid

  if (choice == '+') {
    answer = num1 + num2;
  } else if (choice == '-') {
    answer = num1 - num2;
  } else if (choice == '*') {
    answer = num1 * num2;
  } else if (choice == '/') {
    if (num2 != 0) {
      answer = num1 / num2;
    } else {
      print("Error: Division by zero is not allowed.");
      validOperation = false;
    }
  } else {
    print('Invalid input, kindly review.');
    validOperation = false;
  }

  // Only print the result if the operation was valid
  if (validOperation) {
    print("${num1} ${choice} ${num2} = ${answer}");
  }
}
