void main() {
  List<String> data = List.generate(42, (i) => 'Item ${i +1}');
  for (var element in splitDates(data, 6)) {
    print(element);
  }
}





List<List<String>> splitDates(List<String> originalList, int numberOfSublists) {
  // Calculate the size of each sublist
  int chunkSize = (originalList.length / numberOfSublists).ceil();

  List<List<String>> subLists = [];

  for (int i = 0; i < originalList.length; i += chunkSize) {
    // Make sure we don't go out of bounds for the last sublist
    subLists.add(originalList.sublist(i, i + chunkSize > originalList.length ? originalList.length : i + chunkSize));
  }

  return subLists;
}
