class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}
Node middleNode(Node node){
  Node Step = node;
  Node twoStep = node;
  while(twoStep.next != null){
    Step = Step.next!;
    twoStep = twoStep.next!.next!;
  }
  return Step;
}
void main(){
  final node1 = Node(value: "First");
  final node2 = Node(value: "Second");
  final node3 = Node(value: "Third");
  node1.next = node2; node2.next = node3;
  print(middleNode(node1).value);
}