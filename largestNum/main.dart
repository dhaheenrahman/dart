import 'dart:io';

void main() {
  List<int> nums = [];
  print("Enter the no.of elements");
  int n = int.parse(stdin.readLineSync()!);
  print("Enter the elements: ");
  print("Element 1: ");
  nums.add(int.parse(stdin.readLineSync()!));
  int biggest = nums[0];
  for (var i = 1; i < n; i++) {
    print("Element ${i + 1}: ");
    nums.add(int.parse(stdin.readLineSync()!));
    if (nums[i] > biggest) biggest = nums[i];
  }
  print("The List is:\n$nums\nBiggest among the list : $biggest");
}
