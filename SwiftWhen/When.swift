//
//  When.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/1/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

infix operator =>: AssignmentPrecedence

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
