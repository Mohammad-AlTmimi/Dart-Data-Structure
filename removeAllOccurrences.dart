//import 'dart:js_util';

class Node<T>{
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}
Node<T>? Remove<T>(Node<T> node){
  if(node == null)
    return null;
  Node current = node;
  Map<dynamic, bool> seenValues = {};
  seenValues[node.value] = true;
  while (current.next != null) {
    if (seenValues[current.next!.value] == true) {
      current.next = current.next!.next;
    } else {
      current = current.next!;
      seenValues[current.value] = true;
    }
  }
  return node;
}
String toString(Node? node) {
  if (node == null) {
    return '';
  }
  return node.value.toString() + ' ' + toString(node.next);
}



void main(){
  final node1 = Node(value: "First");
  final node2 = Node(value: "Second");
  final node3 = Node(value: "Third");
  final node4 = Node(value: "First");
  final node5 = Node(value: "Second");
  final node6 = Node(value: "Third");
  node1.next = node2; node2.next = node3;
  node3.next = node4; node4.next = node5;
  node5.next = node6;
  
  print(toString(Remove(node1)));
}