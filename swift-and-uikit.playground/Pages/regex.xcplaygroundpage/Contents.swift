//: [Previous](@previous)

import Foundation

protocol TextValidation {
    
    var regExMatchingString: String {get}
    var regExFindMatchString: String {get}
    var validationMessage: String {get}
    func validateString(str: String) -> Bool
    func getMatchingString(str: String) -> String?
}

class AlphabeticValidation1: TextValidation {
    
    static let sharedInstance = AlphabeticValidation1()
    private init(){}
    
    let regExFindMatchString = "^[a-zA-Z]{0,10}"
    let validationMessage = "Can only contain Alpha characters"
    var regExMatchingString: String {
        get {
            return regExFindMatchString + "$"
        }
    }
    
    func validateString(str: String) -> Bool {
        if let _ = str.range(of: regExMatchingString,
                             options: .regularExpression){
            return true
        } else {
            return false
        }
    }
    
    func getMatchingString(str: String) -> String? {
        if let newMatch = str.range(of: regExFindMatchString,
                                    options: .regularExpression) {
            return str.substring(with: newMatch)
        } else {
            return nil
        }
    }
}

//: [Next](@next)
