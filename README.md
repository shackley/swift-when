# SwiftWhen

[![CocoaPods](https://img.shields.io/cocoapods/v/SwiftWhen.svg)](https://cocoapods.org/)

SwiftWhen is an experimental µframework that attempts to emulate a Kotlin [when expression](https://kotlinlang.org/docs/reference/control-flow.html#when-expression).

This is made possible by [function builders](https://github.com/apple/swift-evolution/blob/9992cf3c11c2d5e0ea20bee98657d93902d5b174/proposals/XXXX-function-builders.md), a new Swift feature proposed in Swift 5.1.

## Use

`when` can be used as concise alternative to a switch statement.

```swift
when(x) {
    1 => print("x is 1")
    2 => print("x is 2")
    3 => print("x is 3")
}
```

Use a closure to execute multiple statements.
```swift
when(x) {
    1 => {
        print("x is 1")
        f1()
    }
    2 => {
        print("x is 2")
        f2()
    }
    3 => {
        print("x is 3")
        f3()
    }
}
```

It also works with ranges.
```swift
when(x) {
  0 ... 4 => print("x is between 0 and 4")
  5 ..< 10 => print("x is between 5 and 9")
  10 => print("x is 10")
}
```

Like in Kotlin, it can be used as an expression.

```swift
let result = when(x) {
    1 => "x is 1"
    2 => "x is 2"
    3 => "x is 3"
}
```

 `when` can also be used without an argument. This acts as an if-else chain where the conditions are Boolean expressions. The first expression that is true is chosen.
```swift
when {
    x == 1 => print("x is 1")
    y == 5 => print("x is 5")
}
```

## Integration

### Cocoapods

```ruby
pod 'SwiftWhen', '~> 0.0.2'
```
