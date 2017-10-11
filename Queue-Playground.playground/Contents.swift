// Playground: Queue simple implementation using Swift

public struct Queue<T> {
    private var array = [T]()
    
    /// Total number of elements in the queue
    var count: Int {
        return array.count
    }
    
    /// Check if the queue is empty or not
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    /// Enqueue an element
    /// parameter enqueue: element to be added
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    /// Dequeue the element based on Queue algorithm
    /// returns: dequeued element
    public mutating func dequeue() -> T? {
        guard !isEmpty else {
            return nil
        }
        
        return array.removeFirst()
    }
}

// Let's use it

var queue = Queue<Int>()
queue.enqueue(10)
queue.enqueue(20)
queue.enqueue(30)

// List contains [10, 20, 30]
print(queue)

queue.dequeue()
// Now the list contains [20, 30]
queue.count

queue.dequeue()
queue.dequeue()
// List is empty now :(

queue.dequeue()

// We can try to remove a gosht :)