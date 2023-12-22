class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

String toString(Node? node) {
  if (node == null) {
    return '';
  }
  return node.value.toString() + ' ' + toString(node.next);
}

Node<T>? reversedLinkedList<T>(Node<T>? head) {
  Node<T>? prev = null;
  Node<T>? current = head;
  Node<T>? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev; // Return the new head of the reversed list
}

void main() {
  final node1 = Node(value: "First");
  final node2 = Node(value: "Second");
  final node3 = Node(value: "Third");
  node1.next = node2;
  node2.next = node3;

  Node? reversedHead = reversedLinkedList(node1);

  print(toString(reversedHead));
}
