//: [Previous](@previous)

// enum
enum Apple{
    case IPhone
    case IPad
    case Watch
    case TV
    case MacBook
}


// enum with raw type, and raw value
enum MacBook: Int {
    case Air = 1
    case Pro
    case None
}

MacBook.Air
print(MacBook.Air)

print(type(of:MacBook.Air.rawValue))
print(MacBook.Pro.rawValue)
print(type(of:MacBook.Pro.rawValue))


// enum with associated value
enum Devices {
  case IPod(model: Int, year: Int, memory: Int)
  case IPhone(model: String, memory: Int)
  case IPad(model: String, memory: Int)
}


let iPhone7 = Devices.IPhone(model: "2.5", memory: 1000)
switch iPhone7 {
case .IPhone(let model,let memory):
    print(model, type(of: model), memory)
//case .IPad(model: <#T##String#>, memory: <#T##Int#>)
    default:
        print("yes")
}

print(type(of:iPhone7))


enum Reindeer: String {
    case Dasher, Dancer, Prancer, Vixen, Comet, Cupid, Donner, Blitzen,
         Rudolph
    
    static var allCases: [Reindeer] {
        return [Dasher, Dancer, Prancer, Vixen, Comet, Cupid, Donner, Blitzen,
                Rudolph]
    }
    
    static func randomCase() -> Reindeer {
        let randomValue = Int(
            arc4random_uniform(
                UInt32(allCases.count)
            )
        )
        return allCases[randomValue]
    }
    
}


// enum withn associate value, and method
enum BookFormat {
  case PaperBack (pageCount: Int, price: Double)
  case HardCover (pageCount: Int, price: Double)
  case PDF (pageCount: Int, price: Double)
  case EPub (pageCount: Int, price: Double)
  case Kindle (pageCount: Int, price: Double)
 
  var pageCount: Int {
    switch self {
      case .PaperBack(let pageCount, _):
        return pageCount
    case .HardCover(let pageCount, _):
        return pageCount
    case .PDF(let pageCount, _):
        return pageCount
    case .EPub(let pageCount, _):
        return pageCount
    case .Kindle(let pageCount, _):
        return pageCount
    }
  }
    
    var price: Double {
        switch self {
        case .PaperBack(_, let price):
            return price
        case .HardCover(_, let price):
            return price
        case .PDF(_, let price):
            return price
        case .EPub(_, let price):
            return price
        case .Kindle(_, let price):
            return price
        }
    }
    
}

var paperBack = BookFormat.PaperBack(pageCount: 220, price: 39.99)
print("\(paperBack.pageCount) - \(paperBack.price)")

//: [Next](@next)
