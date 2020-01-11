import UIKit

// 01 Arithmetic Operators
let first = 13
let second = 4

let total = first + second
let difference = first - second
let product = first * second
let quotient = first / second
let remainder = first % second

// 02 Operator overloading
let firstString = "Hello, "
let secondString = "World!"
let greeting = firstString + secondString

let vocalist = ["Robert Plant"]
let guitarist = ["Jimmy Page"]
let basist = ["John Paul Jones"]
let drummer = ["John Bonham"]
let ledZeppelin = vocalist + guitarist + basist + drummer

// 03 Compound assignment operators
var score = 98
score -= 6

var welcome = "Hello, "
welcome += "World!"

// 04 Comparison operators
let isEqual = firstString == secondString

// 05 Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// 06 Combining conditions
let age1 = 12
let age2 = 21

if age1 >= 18 && age2 >= 18 {
    print("Both are over 18")
}

if age1 >= 18 || age2 >= 18 {
    print("One of them is over 18")
}

// 07 The ternary operator
print(firstCard == secondCard ? "Both cards are the same" : "The cards aren't the same")

// 08 Switch statements
let weather = "sunny"

switch weather {
case "sunny":
    print("Remember your sunscreen!")
    fallthrough
default:
    print("Enjoy your day!")
}

// 09 Range operators
let rangeValueCheck = 78

switch rangeValueCheck {
case 0..<50:
    print("Epic fail!")
case 50..<85:
    print("Not bad..")
default:
    print("Great job!")
}
