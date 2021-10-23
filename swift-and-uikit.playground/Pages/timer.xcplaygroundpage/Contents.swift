//: [Previous](@previous)

iimport Foundation
import UIKit

class First {
    
    static let shared = First()
    var check = 0
    var timer = Timer()
    func timed() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self,
                                     selector: #selector(oneTest), userInfo: nil, repeats: true)
        
    }
    
    @objc func oneTest() {
        
        print(check)
        check += 1
        if check == 11 {
            timer.invalidate()
        }
    }
    
}

First.shared.timed()

String(describing: "hhhh")

//: [Next](@next)
