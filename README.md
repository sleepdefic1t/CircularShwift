# CircularShwift
RIPEMD CircularShift Precedence Group ```~<<``` Infix Operator in Swift 4.


was:  
```swift
infix operator  ~<< { precedence 160 associativity none }

public func ~<< (lhs: UInt32, rhs: Int) -> UInt32 {
    return (lhs << UInt32(rhs)) | (lhs >> UInt32(32 - rhs));
}
```

is now:
```swift
precedencegroup CircularShwift {
    associativity: none
    higherThan: BitwiseShiftPrecedence
}

infix operator  ~<< : CircularShwift

public func ~<< (lhs: UInt32, rhs: Int) -> UInt32 {
    return (lhs << UInt32(rhs)) | (lhs >> UInt32(32 - rhs));
}
```

source: [Swift-Evolution - Proposals - 0077-operator-precedence](https://github.com/apple/swift-evolution/blob/master/proposals/0077-operator-precedence.md)
