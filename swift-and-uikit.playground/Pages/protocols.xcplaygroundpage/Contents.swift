//: [Previous](@previous)

import Foundation
import UIKit

// MARK: - Playround

protocol Bird: CustomStringConvertible {
  var name: String { get }
  var canFly: Bool { get }
}

extension CustomStringConvertible where Self: Bird {
  var description: String {
    canFly ? "I can fly" : "Guess I'll just sit here :["
  }
}


extension Bird {
  // Flyable birds can fly!
  var canFly: Bool { self is Flyable }
}

protocol Flyable {
    
    var airspeedVelocity: Double { get }
    
}


// MARK: - Structs

struct FlappyBird: Bird, Flyable {

  let name: String
  let flappyAmplitude: Double
  let flappyFrequency: Double
//  let canFly = true

  var airspeedVelocity: Double {
    3 * flappyFrequency * flappyAmplitude
  }

}

struct Penguin: Bird {
  let name: String
  let canFly = false
}

struct SwiftBird: Bird, Flyable {
  var name: String { "Swift \(version)" }
  let canFly = true
  let version: Double
  private var speedFactor = 1000.0
  
  init(version: Double) {
    self.version = version
  }

  // Swift is FASTER with each version!
  var airspeedVelocity: Double {
    version * speedFactor
  }
    
}

var swiftBird: SwiftBird = SwiftBird(version: 2)

swiftBird.name
swiftBird.canFly



// MARK: - Enum

enum UnladenSwallow: Bird, Flyable {
    
  case african
  case european
  case unknown
  
  var name: String {
    switch self {
    case .african:
      return "African"
    case .european:
      return "European"
    case .unknown:
      return "What do you mean? African or European?"
    }
  }
  
  var airspeedVelocity: Double {
    switch self {
    case .african:
      return 10.0
    case .european:
      return 9.9
    case .unknown:
      fatalError("You are thrown from the bridge of death!")
    }
  }
}

extension UnladenSwallow {
  var canFly: Bool {
    self != .unknown
  }
}



UnladenSwallow.unknown.canFly         // false
UnladenSwallow.african.canFly         // true
Penguin(name: "King Penguin").canFly  // false

UnladenSwallow.african


@objc protocol Phone {
    var phoneNumber: String {get set}
    @objc optional var emailAddress: String {get set}
    func dialNumber()
    @objc optional func getEmail()
    
}

class PhoneClass: Phone{
    var phoneNumber: String = "070"
    
    
    func dialNumber() {
        //
    }
}

protocol MTN: Phone{
    var prefix: [String] {get}
}

extension Int {
  func factorial() -> Int {
    var answer = 1
    for x in (1...self).reversed() {
      answer *= x
    }
    return answer
  }
}

5.factorial()

//struct Glo: Phone{
//
//}


//: [Next](@next)
