import UIKit

// Protocols

protocol Identifiable {
    var id: String { get set }
}

struct Person: Identifiable {
    var id: String
}

func display(thing: Identifiable) {
    print("ID: \(thing.id)")
}

let person = Person(id: "M010203")
display(thing: person)


// Protocol Inheritance

protocol NeedsTraining {
    func learn(skill: String)
}

protocol Payable {
    func processWages() -> Int
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: NeedsTraining, HasVacation, Payable { }


// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print("Square of \(number) is \(number.squared())")

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number2 = 7
let isEven = number2.isEven ? "even" : "odd"
print("The number \(number2) is \(isEven)")


// Protocol extensions
let greatApes = ["Chimpanzee", "Gorilla", "Orangutan", "Bonobos"]
let zeps = Set(["Jimmy Page", "Robert Plant", "Jon Bonham", "John Paul Jones"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        for member in self {
            print(member)
        }
    }
}

greatApes.summarize()
zeps.summarize()


// Protocol-oriented programming
protocol NewIdentifiable {
    var id: String { get set }
    func identify()
}

extension NewIdentifiable {
    func identify() {
        print("My ID is \(id)")
    }
}

struct User: NewIdentifiable {
    var id: String
}

let user = User(id: "U0070098")
user.identify()
