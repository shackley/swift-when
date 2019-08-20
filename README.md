# SwiftWhen

[![CocoaPods](https://img.shields.io/cocoapods/v/SwiftWhen.svg)](https://cocoapods.org/)

SwiftWhen is an experimental µframework that attempts to emulate a Kotlin [when expression](https://kotlinlang.org/docs/reference/control-flow.html#when-expression).

This is made possible by [function builders](https://github.com/apple/swift-evolution/blob/9992cf3c11c2d5e0ea20bee98657d93902d5b174/proposals/XXXX-function-builders.md), a new Swift feature proposed in Swift 5.1.

## Integration

### Cocoapods

```ruby
pod 'SwiftWhen', '=> 0.0.3'
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
// x is 2
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
}
// x is between 10 and 19
```

 `when` can also be used without an argument. This acts as an if-else chain where the conditions are Boolean expressions. The first expression that is true is chosen.
```swift
let x = 5
when {
    x == 1 => print("x is 1")
    x == 5 => print("x is 5")
    otherwise => print("x is something else")
}
// x is 5
```
