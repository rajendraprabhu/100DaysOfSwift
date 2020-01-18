
import UIKit

// Creating classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    @objc func makeNoise() {
        print("Woof!")
    }
}

let jimmy = Dog(name: "Jimmy", breed: "German Shepherd")
print("Name: \(jimmy.name), breed: \(jimmy.breed)")


// Inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
let poppy = Poodle(name: "Poppy")
print("Name: \(poppy.name), breed: \(poppy.breed)")


// Overriding methods
poppy.makeNoise()

class Sheperd: Dog {
    init(name: String) {
        super.init(name: name, breed: "Shepherd")
    }
    
    override func makeNoise() {
        print("Bow Bow!")
    }
}
let tommy = Sheperd(name: "Tommy")
tommy.makeNoise()


// Final classes
final class Car {
    
}

// This won't work, since Car is final
//class Sedan: Car {
//
//}


// Copying objects
class Monster {
    var name = "Dracula"
}

let vampire = Monster()
print(vampire.name)

var vampire2 = vampire
vampire2.name = "Dracula Jr."
print(vampire2.name)
print(vampire.name)


// Deinitializers
class Person {
    var name = "Scarlet Pimpernel"
    
    init() {
        print("\(name) is born!")
    }
    
    func greet() {
        print("Hello, I'm \(name)..")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.greet()
}


// Mutability
class Building {
    var type = "Residential"
}

let building = Building()
print(building.type)
building.type = "Commercial"
print(building.type)
