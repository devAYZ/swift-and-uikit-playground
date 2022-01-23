//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground . Isglmtnos "

var name = ["mtn", "glo", "airtel"]

greeting.contains("mtn")
name.contains(where: greeting.contains)


let algo = "MTN VTU PLUS DATA PLAN / Data 30MB (Phone Number: 08135773348)"

let start = algo.lastIndex(of: " ")
let end = algo.lastIndex(of: ")")

algo[start!..<end!].dropFirst()


// Function To Get Phone Number From Display Name e.g. "Airtel Mobile Top-Up / Zain MTU 200 (Phone Number: 08993464152)"
func generatePhoneNumber(_ displayName: String) -> String? {
    let start = displayName.lastIndex(of: " ")
    let end = displayName.lastIndex(of: ")")
    guard let start = start, let end = end else { return nil }
    return String(displayName[start..<end].dropFirst())
}

//: [Next](@next)
