import UIKit


let possibleNumber = "f"
let convertedNumber = Int(possibleNumber)

var serverResponseCode:Int? = 404
serverResponseCode = nil

if convertedNumber != nil{
    print(convertedNumber!)
}

if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
}
