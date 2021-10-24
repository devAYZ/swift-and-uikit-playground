//: [Previous](@previous)

import Foundation
import UIKit

let quote = "Haters gonna hate"
var a = quote.range(of: "hate")
print(a, type(of: a))
var b = (quote as NSString).range(of:  "hate")
print(b, type(of: b))

let attributedQuote = NSAttributedString(string: quote)

// MARK: - 2
let font = UIFont.systemFont(ofSize: 30)
let attributes = [NSAttributedString.Key.font: font]
let attributedQuote2 = NSAttributedString(string: quote, attributes: attributes)
//let attributedQuote22 = NSAttributedString(st)

// MARK: - 3
let shadow = NSShadow()
shadow.shadowColor = UIColor.red
shadow.shadowBlurRadius = 5

let attributes3: [NSAttributedString.Key: Any] = [
    .font: font,
    .foregroundColor: UIColor.white,
    .shadow: shadow,
]
let attributedQuote3 = NSAttributedString(string: quote, attributes: attributes3)


// MARK: - 4
let paragraphStyle = NSMutableParagraphStyle()
paragraphStyle.alignment = .center
paragraphStyle.firstLineHeadIndent = 5.0

let attributes4: [NSAttributedString.Key: Any] = [
    .font: font,
    .foregroundColor: UIColor.white,
    .shadow: shadow,
    .paragraphStyle: paragraphStyle
]
let attributedQuote4 = NSAttributedString(string: quote, attributes: attributes3)


// MARK: - 5
let quote2 = "Haters gonna hate"
let mutateAttributedQuote = NSMutableAttributedString(string: quote)
mutateAttributedQuote.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(location: 7, length: 5))

let attributes5: [NSAttributedString.Key: Any] = [.backgroundColor: UIColor.green, NSAttributedString.Key.kern: 10]

mutateAttributedQuote.addAttributes(attributes5, range: NSRange(location: 0, length: 6))

//: [Next](@next)
