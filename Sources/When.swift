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
  if let matchingCase = cases().first(where: { $0.matches(value) }) {
    return matchingCase.result()
  }
  if let void = () as? R {
    return void
  }
  fatalError("No matching case found for value: \(value)")
}

@discardableResult public func when<R>(@WhenBuilder _ expressions: () -> [WhenExpression<R>]) -> R {
  if let matchingExpression = expressions().first(where: { $0.matches() }) {
    return matchingExpression.result()
  }
  if let void = () as? R {
    return void
  }
  fatalError("No matching expression found")
}
