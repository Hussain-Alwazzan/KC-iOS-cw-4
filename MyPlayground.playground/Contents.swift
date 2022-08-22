import UIKit

var name = "Hussain"
var birthYear = 2005
var age : Int
var currentYear = 2022


age = currentYear - birthYear

print("Hello my name is \(name) and my age is \(age)")

if age >= 14 && age <= 18 {
    print("نعم يمكنك المشاركة في الكويت تبرمج")
}
else{
    print("لا يمكنك المشاركة في الكويت تبرمج") 
}

var textName = "8"
var number = 4
var doubleNumb : Double

doubleNumb = (Double(textName) ?? 0) + Double(number)
