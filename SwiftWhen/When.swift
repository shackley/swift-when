//
//  When.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/1/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

infix operator =>: AssignmentPrecedence

public func =><T: Comparable, R>(value: T, result: @escaping @autoclosure () -> R) -> (value: T, result: () -> R) {
  return (value: value, result: result)
}

public func =><T: Comparable, R>(value: T, result: @escaping () -> R) -> (value: T, result: () -> R) {
  return (value: value, result: result)
}

public func =><R>(value: @escaping @autoclosure () -> Bool, result: @escaping @autoclosure () -> R) -> (value: () -> Bool, result: () -> R) {
  return (value: value, result: result)
}

public func =><R>(value: @escaping @autoclosure () -> Bool, result: @escaping () -> R) -> (value: () -> Bool, result: () -> R) {
  return (value: value, result: result)
}

@_functionBuilder public struct WhenBuilder {
  public static func buildBlock<T: Comparable, R>(_ cases: (value: T, result: () -> R)...) -> [(value: T, result: () -> R)] {
    return cases
  }
  
  public static func buildBlock<R>(_ cases: (value: () -> Bool, result: () -> R)...) -> [(value: () -> Bool, result: () -> R)] {
    return cases
  }
}

@discardableResult public func when<T: Comparable, R>(_ value: T, @WhenBuilder _ cases: () -> [(value: T, result: () -> R)]) -> R {
  for possibleCase in cases() {
    if possibleCase.value == value {
      return possibleCase.result()
    }
  }
  fatalError("No matching case for value: \(String(describing: value))")
}

@discardableResult public func when<R>(@WhenBuilder _ cases: () -> [(value: () -> Bool, result: () -> R)]) -> R {
  for possibleCase in cases() {
    if possibleCase.value() {
      return possibleCase.result()
    }
  }
  fatalError("None of the cases are true")
}
