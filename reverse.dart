void printReservedList(List<dynamic> arr){
  arr = arr.reversed.toList();
  print(arr);
}
void main(){
  var list = [1 , 2, "Monkey"];
  printReservedList(list);
}