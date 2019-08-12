//
//  WhenExpression.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/12/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public struct WhenExpression<R> {
  let matches: () -> Bool
  let result: () -> R

  init(expression: @escaping () -> Bool, result: @escaping () -> R) {
    self.matches = expression
    self.result = result
  }
}
