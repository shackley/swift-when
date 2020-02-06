//
//  WhenBuilder.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/12/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

@_functionBuilder public struct WhenBuilder {
  public static func buildBlock<T: Comparable, R>(_ cases: WhenCase<T, R>...) -> [WhenCase<T, R>] {
    return cases
  }
  
  public static func buildBlock<R>(_ expressions: WhenExpression<R>...) -> [WhenExpression<R>] {
    return expressions
  }
}
