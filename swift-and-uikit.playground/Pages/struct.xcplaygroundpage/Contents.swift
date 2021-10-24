//: [Previous](@previous)

import Foundation
import Foundation
import UIKit

var greeting = "Hello, playground"

struct TestOne {
    var name: String?
}

struct TestTwo {
    var name: String
}

var testOne = TestOne()
testOne.name = "boy"
testOne.name
let testTwo = TestTwo(name: "boy")

func testOne<T: Sequence>(name: T) -> String {
    
    return name as! String
}
protocol Sorter {
    func sort <T>(items: [T]) -> [T]
}


struct Bucket <T> {
    var elements: [T]
    func sort(algorithm: Sorter) -> [T] {
        return algorithm.sort(items: elements)
    }
}


var bucketName = [Bucket<Int>]()

struct TestThree {
    var name = ""
}

var testThree = TestThree()
testThree.name

struct List<T> {
    var array = [Int]()
}
var stringList = List<String>()


struct List2 {
}
var stringList2 = List2()

//: [Next](@next)
