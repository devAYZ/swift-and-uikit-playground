//: [Previous](@previous)

import Foundation

// if, !nil
// Force Unwrapping, !
// Nil coalessing, ??
// optional binding (if let, guard, switch)
// optional chaining, ?.
// implicit unwrapping: Type! , it unwraps automatically -fail if it nil

let man: Int? = 200
let boy: Int? = 100

print(man,boy)

if let man = man, let boy = boy {
    print(man,boy)
}

func testManBoy() {
    guard let boy = boy else {
        print("boy is here")
        return
    }
    print(boy, "1")
    guard let man = man else {
        print("man is here")
        return
    }
    print(boy, "2")
    print(man,boy)
}

testManBoy()

switch man {
case .none:
    print("none")
case .some(let x):
    print("some: ", x)
//default:
//    print("some: ", x)
}



// implicit unwrapping: Type!
var impTest: Int!

impTest = 5
print(2 + impTest)

//: [Next](@next)
