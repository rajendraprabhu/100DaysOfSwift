import UIKit

// Initializers
struct User {
    var name: String
}
let user = User(name: "oral-b")

struct User1 {
    var name: String
    
    init() {
        name = "anonymous"
        print("Initializing user...")
    }
}
var user1 = User1()
user1.name = "crest"


// Current instance aka self
struct User2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree...")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}
var stuart = Person(name: "Stuart")
stuart.familyTree


// Static properties and functions
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let st1 = Student(name: "Mike")
let st2 = Student(name: "Thomas")
print(Student.classSize)


// Access control
struct Person1 {
    private var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func identify() {
        print("The person's name is: \(name)")
    }
}
let person1 = Person1(name: "Tomlin")
person1.identify()
