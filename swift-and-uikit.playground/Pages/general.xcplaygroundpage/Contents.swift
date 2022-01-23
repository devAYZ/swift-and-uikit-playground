import UIKit

var greeting = "hello, playGround"

public extension StringProtocol {
    var firstUppercased: String { return prefix(1).uppercased() + dropFirst() }
}
greeting.firstUppercased

let x = ["1", "2"].dropFirst()
x[1]
//let y = x[0]

var test = 1 == 1

let names = ["Bear", "Joe", "Clark"]
names.map { (s) -> String in
  return s.uppercased()
}
names

let i = 5
let val = Double(i) * 6.0

print(UInt.min)

6 % 6
