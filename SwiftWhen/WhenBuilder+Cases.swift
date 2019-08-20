//
//  WhenBuilder+Cases.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/18/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public extension WhenBuilder {
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ case4: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, case4, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ case4: WhenCase<T, R>,
    _ case5: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, case4, case5, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ case4: WhenCase<T, R>,
    _ case5: WhenCase<T, R>,
    _ case6: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, case4, case5, case6, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ case4: WhenCase<T, R>,
    _ case5: WhenCase<T, R>,
    _ case6: WhenCase<T, R>,
    _ case7: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, case4, case5, case6, case7, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ case4: WhenCase<T, R>,
    _ case5: WhenCase<T, R>,
    _ case6: WhenCase<T, R>,
    _ case7: WhenCase<T, R>,
    _ case8: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, case4, case5, case6, case7, case8, WhenCase(result: defaultResult)]
  }
  
  static func buildBlock<T: Comparable, R>(
    _ case1: WhenCase<T, R>,
    _ case2: WhenCase<T, R>,
    _ case3: WhenCase<T, R>,
    _ case4: WhenCase<T, R>,
    _ case5: WhenCase<T, R>,
    _ case6: WhenCase<T, R>,
    _ case7: WhenCase<T, R>,
    _ case8: WhenCase<T, R>,
    _ case9: WhenCase<T, R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenCase<T, R>] {
    return [case1, case2, case3, case4, case5, case6, case7, case8, case9, WhenCase(result: defaultResult)]
  }
}
