import UIKit


class Node {
    let value   : Int
    var next    : Node?
    
    init(value: Int, next: Node?) {
        self.value      = value
        self.next       = next
    }
}

class LinkedList {
    
    var head: Node?
    
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = Node(value: value, next: nil)
        
    }
    
    func delete(value: Int) {
        if head?.value == value {
            head = head?.next
        }
        
        var previous: Node?
        var current = head
        
        while current != nil, current?.value != value {
            previous = current
            current = current?.next
        }
        
        previous?.next = current?.next
        
    }
    
    func insertInOrder(value: Int) {
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        }
        
        var currentNode: Node? = head
        while currentNode?.next != nil, currentNode?.next?.value ?? Int.min < value {
            currentNode = currentNode?.next
        }
        
        currentNode?.next = Node(value: value, next: currentNode?.next)
        
    }
    
    func reverse(head: Node?) -> Node? {
        
        var current = head
        var previous: Node?
        var next: Node?
        
        while current != nil {
            next = current?.next
            current?.next = previous
            previous = current
            current = next
        }
        return previous
    }
    
    
}




