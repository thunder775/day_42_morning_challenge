// Write a function that takes an array of unordered integers and logs percentile
// values at 25%, 50%, 75%, 90%, 95%, 99% and 100%

// For example, given the list [8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2] it should log the following:
//  25% of the numbers are less than or equal to 3
//  50% of the numbers are less than or equal to 8
//  75% of the numbers are less than or equal to 16
//  90% of the numbers are less than or equal to 20
//  95% of the numbers are less than or equal to 22
//  99% of the numbers are less than or equal to 22
//  100% of the numbers are less than or equal to 22
List<List<int>> log(List<int> input) {
  List<int> percentages = [25, 50, 75, 90, 95, 99, 100];
  input.sort();
  List<List<int>> output = [];
  percentages.forEach((percentValue) {
    output.add(calculateNPercentOfIntegers(percentValue, input));
  });
//  print(output);
  return output;
}
List<int> calculateNPercentOfIntegers(int percent, List input) {
  List<int> temp = [];
  int numberOfIntegers = (input.length * (percent / 100)).ceil();
  temp.add(percent);
  temp.add(input[numberOfIntegers - 1]);
  return temp;
}
main() {

  log([1,2,3,4]);
   log([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]);

//  for(var x in log([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2])){
//    print('${x[0]}% of the numbers are less than or equal to ${x[1]}');
//  }

}
