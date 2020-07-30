import UIKit

var str = "Hello, playground"

//public protocol IteratorProtocol {
//    associatedtype Element
//    public mutating func next() -> Self.Element?
//}
//
//
//public protocol Sequence {
//    associatedtype Iterator: IteratorProtocol
//    public func makeIterator() -> Self.Iterator
//}

public struct Stack<T> {
    private var elements = [T]()
    public init() {
        
    }
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public mutating func push(element: T) {
        self.elements.append(element)
    }
    
    public func peek() -> T? {
        return elements.last
    }
    
    public func isEmpty() -> Bool {
        return self.elements.isEmpty
    }
    
    public var count: Int {
        return self.elements.count
    }
}

var myStack = Stack<Int>()

myStack.push(element: 5)
myStack.push(element: 44)
myStack.push(element: 23)

var x = myStack.pop()
var y = myStack.pop()

extension Stack: CustomStringConvertible, CustomDebugStringConvertible {
    public var  description: String {
        return self.elements.description
    }
    
    public var  debugDescription: String {
        return self.elements.debugDescription
    }
}

extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

public struct ArrayIterator<T>: IteratorProtocol {
    var currentElement: [T]
    init(elements: [T]) {
        self.currentElement = elements
    }
    
    mutating public func next() -> T? {
        if (self.currentElement.isEmpty) {
            return self.currentElement.popLast()
        }
        return nil
    }

}

extension Stack: Sequence {
    public func makeIterator() -> ArrayIterator<T> {
        return ArrayIterator<T>(elements: self.elements)
    }
}


public init<S: Sequence>(_ s:S) where S.Iterator.Element == T {
    self.elements = Array(s.reversed())
    
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        return AnyIterator(IndexingIterator(_elements: self.elements.lazy.reversed()))
    }
}
