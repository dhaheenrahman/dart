import 'dart:io';

void main() {
  var output;
  while (true) {
    print("\nchoose one option:-\n"
        "1. Celsius -> Faranheit\n2. Faranheit -> Celsius\n3. Exit");
    var choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      print("Enter the temperature in °C: ");
      var input = int.parse(stdin.readLineSync()!);
      output = (9 * input / 5) + 32;
      print("$input°C -> $output°F");
    } else if (choice == 2) {
      print("Enter the temperature in °F: ");
      var input = int.parse(stdin.readLineSync()!);
      output = (5 / 9) * (input - 32);
      print("$input°F -> $output°C");
    } else if (choice == 3)
      exit(0);
    else
      print("invalid input");
  }
}
