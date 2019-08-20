//
//  WhenExpressionTests.swift
//  SwiftWhenTests
//
//  Created by Sterling Hackley on 8/19/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import XCTest
import SwiftWhen

class WhenExpressionTests: XCTestCase {

  func testExpression_withAutoclosure() {
    let result = when {
      1 == 2 => false
      2 == 2 => true
      3 == 2 => false
    }
    XCTAssertTrue(result)
  }
  
  func testExpression_withExplicitClosure() {
    let result = when {
      1 == 2 => {
        false
      }
      2 == 2 => {
        true
      }
      3 == 2 => {
        false
      }
    }
    XCTAssertTrue(result)
  }
  
  func testOtherwiseExpression_withAutoclosure() {
    let result = when {
      1 == 2 => false
      2 == 3 => false
      otherwise => true
    }
    XCTAssertTrue(result)
  }
  
  func testOtherwiseExpression_withExplicitClosure() {
    let result = when {
      1 == 2 => {
        false
      }
      2 == 3 => {
        false
      }
      otherwise => {
        true
      }
    }
    XCTAssertTrue(result)
  }
}
