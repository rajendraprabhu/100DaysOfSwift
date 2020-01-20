import UIKit

// Handling missing data
var age: Int? = nil
age = 38


// Unwrapping optionals
var name: String? = nil
name = "Mike"
if let unwrapped = name {
    print("\(unwrapped) has \(unwrapped.count) characters.")
} else {
    print("A girl has no name!")
}


// Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("A girl still has no name!")
        return
    }
    var message = "Greetings"
    if unwrapped.count > 0 {
        message += ", \(unwrapped)"
    }
    message += "!"
    print(message)
    
}
greet("")


// Force unwrapping
let str = "5"
print(Int(str)!)


// Implicitly unwrapped optionals
var num: Int! = nil
num = 53
print(num)


// Nil coalescing
func name(for id: Int) -> String? {
    return id == 1 ? "Kate Spade" : nil
}
print(name(for: 15) ?? "Anonymous")


// Optional chaining
let beatles = ["john", "paul", "jones", "ringo"]
print(beatles.first?.uppercased())


// Optional try
enum PasswordError: Error {
    case obvious
}

func check(password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

if let password = try? check(password: "pa$$word") {
    print("Valid password")
} else {
    print("Invalid password")
}


// Failable initializers
struct Person {
    let id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let person = Person(id: "123456789")
print(person?.id)


// Typecasting
class Animal { }

class Fish: Animal { }

class Dog: Animal {
    func bark() {
        print("Woof! Woof!")
    }
}

let animals = [Dog(), Fish()]
for animal in animals {
    if let dog = animal as? Dog {
        dog.bark()
    }
}
