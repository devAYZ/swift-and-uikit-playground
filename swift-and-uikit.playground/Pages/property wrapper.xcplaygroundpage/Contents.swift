//: [Previous](@previous)

import Foundation
import UIKit

@propertyWrapper
struct FiftyOrLess {
    private var weight: Int
    
    init() {
        self.weight = 0
    }
    
    var wrappedValue: Int {
        get {
            return weight
        }
        set {
            weight = min(newValue, 50)
        }
    }
}

struct SwiteCase {
    let color: String
    @FiftyOrLess var weight: Int
    
    init(color: String, weight: Int) {
        self.color = color
        self.weight = weight
    }
}

var case1 = SwiteCase(color: "Black", weight: 6)
print(case1.weight)

x = 10
//: [Next](@next)
