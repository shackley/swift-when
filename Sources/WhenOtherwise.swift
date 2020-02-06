//
//  WhenOtherwise.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/18/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public func =><T: Comparable, R>(otherwise: WhenOtherwise.Type, result: @escaping @autoclosure () -> R) -> WhenCase<T, R> {
  return WhenCase(result: result)
}

public func =><R>(otherwise: WhenOtherwise.Type, result: @escaping @autoclosure () -> R) -> WhenExpression<R> {
  return WhenExpression(result: result)
}

public func =><T: Comparable, R>(otherwise: WhenOtherwise.Type, result: @escaping () -> R) -> WhenCase<T, R> {
  return WhenCase(result: result)
}

public func =><R>(otherwise: WhenOtherwise.Type, result: @escaping () -> R) -> WhenExpression<R> {
  return WhenExpression(result: result)
}

public enum WhenOtherwise {}
public let otherwise = WhenOtherwise.self
