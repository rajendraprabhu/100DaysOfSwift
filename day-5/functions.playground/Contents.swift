
import UIKit

// #1 Writing functions
func printWelcome() {
    print("Welcome to my app!")
}
printWelcome()


// #2 Accepting parameters
func printSquare(of: Int) {
    print(of * of)
}
printSquare(of: 46)


// #3 Returning values
func square(of: Int) -> Int {
    return of * of
}
print(square(of: 37))


// #4 Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Adam")


// #5 Omitting parameter labels
func greet(_ name: String) {
    print("Greetings, \(name)!")
}
greet("Rudolph")


// #6 Default parameter
func greet(_ name: String, nicely isWarm: Bool = true) {
    if isWarm {
        print("So good to see you, \(name)!")
    } else {
        print("Oh no! It's \(name) again!")
    }
}
greet("Sarah")
greet("Sam", nicely: true)
greet("Mark", nicely: false)


// #7 Variadic functions
func sum(of numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
print(sum(of: 1, 2, 3, 4, 5, 6))


// #8 & #9 Throwing functions
enum PasswordError: Error {
    case obvious
}

func isValidPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
do {
    try isValidPassword("password")
    print("Password accepted!")
} catch PasswordError.obvious {
    print("That's an obvious password. Please try another one!")
} catch let error {
    print(error.localizedDescription)
}

do {
    try isValidPassword("pa$$word")
    print("Password accepted!")
} catch let error {
    print(error.localizedDescription)
}


// #10 inout parameters
func doubleInPlace(_ number: inout Int) {
    number *= 2
}
var value = 36
print("Before doubling, value: \(value)")
doubleInPlace(&value)
print("After doubling, value: \(value)")
