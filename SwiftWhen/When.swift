//
//  When.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/1/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

infix operator =>: AssignmentPrecedence

public func =><T: Comparable, R>(value: T, result: @escaping @autoclosure () -> R) -> WhenCase<T, R> {
  return WhenCase(value: value, result: result)
}

public func =><T: Comparable, R>(value: T, result: @escaping () -> R) -> WhenCase<T, R> {
  return WhenCase(value: value, result: result)
}

public func =><T: Comparable, R>(range: Range<T>, result: @escaping @autoclosure () -> R) -> WhenCase<T, R> {
  return WhenCase(range: range, result: result)
}

public func =><T: Comparable, R>(range: Range<T>, result: @escaping () -> R) -> WhenCase<T, R> {
  return WhenCase(range: range, result: result)
}

public func =><T: Comparable, R>(closedRange: ClosedRange<T>, result: @escaping @autoclosure () -> R) -> WhenCase<T, R> {
  return WhenCase(closedRange: closedRange, result: result)
}

public func =><T: Comparable, R>(closedRange: ClosedRange<T>, result: @escaping () -> R) -> WhenCase<T, R> {
  return WhenCase(closedRange: closedRange, result: result)
}

public func =><R>(expression: @escaping @autoclosure () -> Bool, result: @escaping @autoclosure () -> R) -> WhenExpression<R> {
  return WhenExpression(expression: expression, result: result)
}

public func =><R>(expression: @escaping @autoclosure () -> Bool, result: @escaping () -> R) -> WhenExpression<R> {
  return WhenExpression(expression: expression, result: result)
}

@discardableResult public func when<T: Comparable, R>(_ value: T, @WhenBuilder _ cases: () -> [WhenCase<T, R>]) -> R {
  for whenCase in cases() {
    if whenCase.matches(value) {
      return whenCase.result()
    }
  }
  fatalError("No matching case for value: \(String(describing: value))")
}

@discardableResult public func when<R>(@WhenBuilder _ expressions: () -> [WhenExpression<R>]) -> R {
  for expression in expressions() {
    if expression.matches() {
      return expression.result()
    }
  }
  fatalError("None of the expressions are true")
}
