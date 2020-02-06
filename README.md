# SwiftWhen

[![CocoaPods](https://img.shields.io/cocoapods/v/SwiftWhen.svg)](https://cocoapods.org/pods/SwiftWhen)
[![SPM](https://img.shields.io/badge/SPM-compatible-blue.svg)](#swift-package-manager)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](/LICENSE)

SwiftWhen is an experimental µframework that attempts to emulate a Kotlin [when expression](https://kotlinlang.org/docs/reference/control-flow.html#when-expression).

This is made possible by [function builders](https://github.com/apple/swift-evolution/blob/9992cf3c11c2d5e0ea20bee98657d93902d5b174/proposals/XXXX-function-builders.md), a new Swift feature proposed in Swift 5.1.

## Integration

### Cocoapods

Add the following line to your `Podfile`
```ruby
pod 'SwiftWhen', '~> 0.1.0'
```

### Swift Package Manager

Declare SwiftWhen as a dependency in your `Package.swift` file:
```swift
.package(url: "https://github.com/shackley/SwiftWhen", from: "0.1.0")
```

## Usage

`when` can be used as concise alternative to a switch statement.

```swift
let x = 2
when(x) {
    1 => print("x is 1")
    2 => print("x is 2")
    3 => print("x is 3")
}
// x is 2
```

Since `when` is a function, it can be used as an expression.

```swift
let x = 2
let result = when(x) {
    1 => "x is 1"
    2 => "x is 2"
    3 => "x is 3"
}
print(result)
// x is 2
```

Execute multiple statements by using a closure.
```swift
let x = 2
when(x) {
    1 => {
        print("x is 1")
        foo()
    }
    2 => {
        print("x is 2")
        bar()
    }
}
// x is 2
```

If multiple cases should be handled the same way, you can combine them by using an array.
```swift
let x = 2
when(x) {
  [1, 3, 5] => print("x is 1, 3, or 5")
  [2, 4, 6] => print("x is 2, 4, or 6")
}
// x is 2, 4, or 6
```

The `otherwise` keyword is used to handle unknown cases.
```swift
let x = 5
when(x) {
  1 => print("x is 1")
  2 => print("x is 2")
  otherwise => print("x is something else")
}
// x is something else
```

`when` works with ranges, too.
```swift
let x = 15
when(x) {
  0 ..< 10 => print("x is between 0 and 9")
  10 ..< 20 => print("x is between 10 and 19")
  20 ... 30 => print("x is between 20 and 30")
  otherwise => print("x is something else")
}
// x is between 10 and 19
```

 `when` can also be used without an argument. This acts as a simple if-else chain where the conditions are Boolean expressions. The first expression that is true is chosen.
```swift
let x = 5
when {
    x == 1 => print("x is 1")
    x == 5 => print("x is 5")
    otherwise => print("x is something else")
}
// x is 5
```

#### Caveats

Because `when` is just a function and not an actual Swift language feature, it is not possible to do exhaustivity checks at compile time. If a when expression does not contain a matching case, a `fatalError` will occur at runtime.
