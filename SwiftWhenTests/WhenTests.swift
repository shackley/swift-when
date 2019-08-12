//
//  WhenTests.swift
//  WhenTests
//
//  Created by Sterling Hackley on 8/1/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import XCTest
import SwiftWhen

class WhenTests: XCTestCase {
  
  func testStatement() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 2
    when(x) {
      1 => f1()
      2 => f2()
      3 => f3()
    }
    
    XCTAssertTrue(called2)
  }
  
  func testStatementRanges() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 15
    when(x) {
      0 ..< 10 => f1()
      10 ..< 20 => f2()
      20 ... 30 => f3()
    }
    
    XCTAssertTrue(called2)
  }

  func testExpression() {
    let x = 2
    
    let y = when(x) {
      1 => "one"
      2 => "two"
      3 => "three"
    }
    
    XCTAssertTrue(y == "two")
  }
  
  func testExpressionRanges() {
    let x = 15
    
    let y = when(x) {
      0 ..< 10 => "one"
      10 ..< 20 => "two"
      20 ... 30 => "three"
    }
    
    XCTAssertTrue(y == "two")
  }
  
  func testMultipleStatement() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 2
    when(x) {
      1 => {
        f1()
      }
      2 => {
        f2()
      }
      3 => {
        f3()
      }
    }
    
    XCTAssertTrue(called2)
  }
  
  func testMultipleStatementRanges() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 15
    when(x) {
      0 ..< 10 => {
        f1()
      }
      10 ..< 20 => {
        f2()
      }
      20 ... 30 => {
        f3()
      }
    }
    
    XCTAssertTrue(called2)
  }
  
  func testNoArgumentStatement() {
    var called1 = false
    
    func f1() { called1 = true }
    func f5() { XCTFail() }
    
    let x = 1
    when {
      x == 1 => f1()
      x == 5 => f5()
    }
    
    XCTAssertTrue(called1)
  }
  
  func testNoArgumentExpression() {
    let x = 1
    
    let y = when {
      x == 1 => "one"
      x == 5 => "five"
    }
    
    XCTAssertTrue(y == "one")
  }
  
  func testNoArgumentMultipleExpression() {
    var called1 = false
    
    func f1() { called1 = true }
    func f5() { XCTFail() }
    
    let x = 1
    when {
      x == 1 => {
        print("x is one")
        f1()
      }
      x == 5 =>  {
        print("x is five")
        f5()
      }
    }
    
    XCTAssertTrue(called1)
  }
}
