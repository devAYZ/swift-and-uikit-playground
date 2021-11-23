import UIKit

var greeting = "hello, playGround"

public extension StringProtocol {
    var firstUppercased: String { return prefix(1).uppercased() + dropFirst() }
}
greeting.firstUppercased
