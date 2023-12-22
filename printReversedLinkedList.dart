class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}
String rec(Node node){
  if(node.next == null)
      return node.value;
  return rec(node.next!) + ' ' + node.value;
}

void main(){
  final node1 = Node(value: "Mohammad");
  final node2 = Node(value: 'Al-Tamimi');
  node1.next = node2;
  print(rec(node1));
}