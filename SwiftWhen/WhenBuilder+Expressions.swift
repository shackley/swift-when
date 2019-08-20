//
//  WhenBuilder+Cases.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/18/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public extension WhenBuilder {
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ expression4: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, expression4, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ expression4: WhenExpression<R>,
    _ expression5: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, expression4, expression5, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ expression4: WhenExpression<R>,
    _ expression5: WhenExpression<R>,
    _ expression6: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, expression4, expression5, expression6, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ expression4: WhenExpression<R>,
    _ expression5: WhenExpression<R>,
    _ expression6: WhenExpression<R>,
    _ expression7: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, expression4, expression5, expression6, expression7, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ expression4: WhenExpression<R>,
    _ expression5: WhenExpression<R>,
    _ expression6: WhenExpression<R>,
    _ expression7: WhenExpression<R>,
    _ expression8: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, expression4, expression5, expression6, expression7, expression8, WhenExpression(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ expression1: WhenExpression<R>,
    _ expression2: WhenExpression<R>,
    _ expression3: WhenExpression<R>,
    _ expression4: WhenExpression<R>,
    _ expression5: WhenExpression<R>,
    _ expression6: WhenExpression<R>,
    _ expression7: WhenExpression<R>,
    _ expression8: WhenExpression<R>,
    _ expression9: WhenExpression<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenExpression<R>] {
    return [expression1, expression2, expression3, expression4, expression5, expression6, expression7, expression8, expression9, WhenExpression(result: defaultResult)]
  }
}

