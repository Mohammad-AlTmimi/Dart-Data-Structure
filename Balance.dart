bool isBalanced(String s){
  List<String> stack = [];
  for(String str in s.split('')){
    if(str == '(')
      stack.add('(');
    else if(str == ')'){
      if(stack.isEmpty){
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty; 
}
// I Think i should be QA insted :)
void main(){
  print(isBalanced("(())")); // True
  print(isBalanced("(Mohammad)")); // True
  print(isBalanced(")(Mohammad)(")); // False
}