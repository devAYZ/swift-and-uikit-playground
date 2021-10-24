//: [Previous](@previous)


import UIKit

protocol AnotherThis{
    func fullName(realAge: Int)
}

class Another{
    var boy: AnotherThis?
    
    func test(){
        boy?.fullName(realAge: 8)
        
    }
}

var testBoy = Another()
testBoy.test()


protocol UseThis{
    func prinThis() -> String
}
extension UseThis {
    func prinThis() -> String {
        "Print This"
    }
}


class ThisClass: UseThis{
    func prinThis() -> String {
        "Print Another"
    }
}

var boy = ThisClass()
boy.prinThis()




protocol Boy {
    var name: String {get}
    var age: Int {get}
    init(name: String)
    
    mutating func fullName(realAge: Int)
}


class Class: Boy {
    func fullName(realAge: Int) {
        age += 1
    }
    
    var age: Int = 5
    
    var name: String
    
    required init(name: String) {
        self.name = name
    }

}

struct English: Boy {
    var age: Int = 0
    
    mutating func fullName(realAge: Int) {
        age += 1
    }
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    
}


@objc protocol Boy2 {
    var name: String {get}
    @objc optional var age: Int {get}
    
    func fullName(realAge: Int)
}

class School: Boy2 {
    var name: String = ""
    
    func fullName(realAge: Int) {
        2 + 2
    }
    
    
}

class Hostel: School {
}

protocol Boy3 {
    associatedtype Show
    var name: Show {get}
    var age: Int {get}
    
    func fullName(realAge: Int)
}

class Hostels: Boy3 {
    
    typealias Show = Int

    var name: Int = 5
    var age: Int = 5
    
    func fullName(realAge: Int) {
        
    }
}

struct Test: Boy3 {
    var name: String
    
    var age: Int
    
    func fullName(realAge: Int) {
        //
    }
    
    typealias Show = String
    
    
}

//: [Next](@next)
