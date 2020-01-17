import UIKit

// Closures - 1 primer

let greeting = {
    print("Hello, World!")
}

let greetPerson = { (person: String) in
    print("Hello, \(person)!")
}

let returnGreetPerson = { (person: String) -> String in
    return "Hello, \(person)!"
}

greeting()
greetPerson("Mike")
print(returnGreetPerson("Shawn"))

print("--------------------------------------")

func introduce(action: () -> Void) {
    print("Ice breaker..")
    action()
    print("Let's get started!")
}
introduce(action: greeting)

print("--------------------------------------")

func introduce(action: (String) -> Void) {
    print("Ice breaker...")
    action("Shawn")
    print("Let's get started, Shawn!")
}
introduce { (person) in
    print("Let's introduce \(person)...")
}

print("--------------------------------------")

func introduce(action: (String) -> String) {
    print("Ice breaker..")
    print(action("Mike"))
    print("Let's get started, Mike!")
}
introduce { (person) -> String in
    return "Let's introduce \(person)..."
}

print("--------------------------------------")

// Closures - 2

// Shorthand parameter names
introduce { person in
    return "Let's introduce \(person)..."
}

introduce { person in
    return "Let's introduce \(person)..."
}

introduce {
    "Let's introduce \($0)..."
}

print("--------------------------------------")

// Closures with multiple parameters
func introduce(action: (String, String) -> String) {
    print("Ice breaker..")
    print(action("Mike", "Shawn"))
    print("Mike said: Let's get started, Shawn!")
}
introduce {
    "Introducing \($1) to \($0).."
}

print("--------------------------------------")

// Returning closures from functions
func introduce() -> (String) -> Void {
    return {
        print("Let's introduce \($0)")
    }
}
introduce()("Shawn")

print("--------------------------------------")

// Capturing values
func introduceWithCounter() -> (String) -> Void {
    var counter = 1
    return {
        counter += 1
        print("Let's introduce \($0), counter: \(counter)")
    }
}
let result = introduceWithCounter()
result("Shawn")
result("Mike")

print("--------------------------------------")
