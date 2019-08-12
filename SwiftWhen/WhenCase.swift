//
//  WhenCase.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/12/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public struct WhenCase<T: Comparable, R> {
  let matches: (T) -> Bool
  let result: () -> R
  
  init(value: T, result: @escaping () -> R) {
    self.matches = { value == $0 }
    self.result = result
  }
  
  init(range: Range<T>, result: @escaping () -> R) {
    self.matches = { range.contains($0) }
    self.result = result
  }
  
  init(closedRange: ClosedRange<T>, result: @escaping () -> R) {
    self.matches = { closedRange.contains($0) }
    self.result = result
  }
}
