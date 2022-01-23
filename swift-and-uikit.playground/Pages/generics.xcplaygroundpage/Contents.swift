//: [Previous](@previous)

import Foundation

//MARK: - Generics
func swapGeneric <T, U>(a: inout T, b: inout U) {
//  let temp = a
//    a = b
//    b = temp
}

var a = 5
var b = 10
swapGeneric(a: &a, b: &b)

var boy: String?


struct Place {
  let id: String
  let latitude: Double
  let longitude: Double
}

// type
extension Place: Equatable { // Equatable
  static func ==(lhs: Place, rhs: Place) -> Bool {
    return lhs.id == rhs.id &&
    lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude
  }
}
var placeOne = Place(id: "Fenway Park", latitude: 42.3467, longitude: -71.0972)
var placeTwo = Place(id: "Wrigley Field", latitude: 41.9484, longitude: -87.6553)
 
print(placeOne == placeTwo)

// function
func testGenericComparable<T: Equatable>(a: T, b: T) -> Bool{ // Comparable or Equatable
  return a == b
}

testGenericComparable(a: 5, b: 5)

var boys: [Int] = []
var boys2 = [Int]()

var boyy = "ddd"
boyy.la


//: [Next](@next)
