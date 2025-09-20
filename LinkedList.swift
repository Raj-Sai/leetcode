
class Node<T> {

    var value: T
    var next: Node<T>?

    init(value: T, next: Node<T>) {
        self.value = value
        self.next = next
    }
}
 
class LinkedList<T> {

    var head: Node<T>?

    init(head: Node<T>?) {
        self.head = head // (A, nil)
    }

    

    func pushAtHead(value: T) {
        var node = Node<T>(value: value) // (B, nil)
        node.next = head //(B, (A, nil))
        head = node
    }

    func pushAtTail(value: T) {
        var node = Node<T>(value: value)

        if head == nil {
            head = node
        }

        var current = head

        while current?.next != nil {
            current = current.next
        }

        current?.next = node

    }
}

var head = Node<String>(value: "Hello", next: nil)
var list = LinkedList<String>(head: head)
