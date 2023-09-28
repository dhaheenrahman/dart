import 'dart:math';
import 'dart:io';

void main() {
  int rand = Random().nextInt(100);
  print("Guess the number");
  var inp = stdin.readLineSync();
  int num = int.parse(inp!);
  while (num != rand) {
    if (num > rand) {
      if (num - rand <= 5)
        print("guess is higher but close to actual value. Guess again: ");
      else
        print("guess is too higher than actual value. Guess again: ");
      inp = stdin.readLineSync();
      num = int.parse(inp!);
    } else {
      if (rand - num <= 5)
        print("Guess is less but close to actual value. Guess again: ");
      else
        print("Guess is too less than actual value. Guess again: ");

      inp = stdin.readLineSync();
      num = int.parse(inp!);
    }
  }
  print("Great you guessed the number");
}
