//
//  WhenOtherwise.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/18/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public func =><R>(otherwise: WhenOtherwise.Type, result: @escaping @autoclosure () -> R) -> () -> R {
  return result
}

public func =><R>(otherwise: WhenOtherwise.Type, result: @escaping () -> R) -> () -> R {
  return result
}

public enum WhenOtherwise {}
public let otherwise = WhenOtherwise.self
