//
//  CircularShwift.swift
//  Created by sleepdefic1t on 8/20/17
//  CC-BY-SA-4.0
//

precedencegroup BitwiseShiftPrecedence {
    associativity: none
    higherThan: LogicalConjunctionPrecedence
}

infix operator  ~<< : BitwiseShiftPrecedence

public func ~<< (lhs: UInt32, rhs: Int) -> UInt32 {
    return (lhs << UInt32(rhs)) | (lhs >> UInt32(32 - rhs));
}
