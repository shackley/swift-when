//
//  WhenCaseTests.swift
//  SwiftWhenTests
//
//  Created by Sterling Hackley on 8/19/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import XCTest
import SwiftWhen

class WhenCaseTests: XCTestCase {

  func testCase_withAutoclosure() {
    let x = 2
    let result = when(x) {
      1 => false
      2 => true
      3 => false
    }
    XCTAssertTrue(result)
  }
  
  func testCase_withExplicitClosure() {
    let x = 2
    let result = when(x) {
      1 => {
        false
      }
      2 => {
        true
      }
      3 => {
        false
      }
    }
    XCTAssertTrue(result)
  }
  
  func testMultiCase_withAutoclosure() {
    let x = 5
    let result = when(x) {
      [1, 2, 3] => false
      [4, 5, 6] => true
      [6, 8, 9] => false
    }
    XCTAssertTrue(result)
  }
  
  func testMultiCase_withExplicitClosure() {
    let x = 5
    let result = when(x) {
      [1, 2, 3] => {
        false
      }
      [4, 5, 6] => {
        true
      }
      [6, 8, 9] => {
        false
      }
    }
    XCTAssertTrue(result)
  }
  
  func testRangeCase_withAutoclosure() {
    let x = 15
    let result = when(x) {
      1 ..< 10 => false
      10 ..< 20 => true
      20 ... 30 => false
    }
    XCTAssertTrue(result)
  }
  
  func testRangeCase_withExplicitClosure() {
    let x = 15
    let result = when(x) {
      1 ..< 10 => {
        false
      }
      10 ..< 20 => {
        true
      }
      20 ... 30 => {
        false
      }
    }
    XCTAssertTrue(result)
  }
  
  func testOtherwiseCase_withAutoclosure() {
    let x = 3
    let result = when(x) {
      1 => false
      2 => false
      otherwise => true
    }
    XCTAssertTrue(result)
  }
  
  func testOtherwiseCase_withExplicitClosure() {
    let x = 3
    let result = when(x) {
      1 => {
        false
      }
      2 => {
        false
      }
      otherwise => {
        true
      }
    }
    XCTAssertTrue(result)
  }
}
