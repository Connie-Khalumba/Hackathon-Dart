// Bubble Sort function to sort a list of integers in ascending order
bubbleSort(List<int> list) {
  // Loop through the list multiple times
  for (int i = 0; i < list.length; i++) {
    // For each item, go through the list up to the second-last element
    for (int j = 0; j < list.length - 1; j++) {
      // If the current item is bigger than the next one, swap them
      if (list[j] > list[j + 1]) {
        int temp = list[j];          // Store the current item in a temporary variable
        list[j] = list[j + 1];       // Move the next item into the current position
        list[j + 1] = temp;          // Put the current item in the next position
      }
    }
  }
  // Print the sorted list
  print(list);
}

void main() {
  // Example list of numbers to sort
  List<int> list = [2, 5, 3, 15, 20, 5, 2, 7, 9];
  // Call the bubbleSort function to sort the list
  bubbleSort(list);
}
