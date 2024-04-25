class Node<T> {
    var value: T
    var prev: Node?
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class DoublyLinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    func insertAtBeginning(_ value: T) {
        let newNode = Node(value: value)
        
        if let headNode = head {
            newNode.next = headNode
            headNode.prev = newNode
        } else {
            tail = newNode
        }
        
        head = newNode
    }
    
    func removeAt(_ index: Int) {
        guard index >= 0 else {
            return
        }
        
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        if let nodeToRemove = currentNode {
            if let prevNode = nodeToRemove.prev {
                prevNode.next = nodeToRemove.next
            } else {
                head = nodeToRemove.next
            }
            
            if let nextNode = nodeToRemove.next {
                nextNode.prev = nodeToRemove.prev
            } else {
                tail = nodeToRemove.prev
            }
        }
    }
}

let list = DoublyLinkedList<String>()
list.insertAtBeginning("Soft")
list.insertAtBeginning("Prof")
list.insertAtBeginning("Hello")

list.removeAt(0)
