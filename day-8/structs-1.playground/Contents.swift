import UIKit

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        return "\(name) is " + (isOlympicSport ? "" : "not ") + "an Olympic sport."
    }
}
var sport = Sport(name: "Tennis", isOlympicSport: true)
print(sport, sport.olympicStatus)
sport.name = "Football"
sport.isOlympicSport = false
print(sport, sport.olympicStatus)


// Property observers
struct Progress {
    var task: String
    var value: Int {
        didSet {
            print("\(value)% downloaded")
        }
    }
}

var progress = Progress(task: "Downloading", value: 0)
progress.value = 20
progress.value = 40
progress.value = 50
progress.value = 70
progress.value = 90
progress.value = 100


// Methods
struct City {
    var name: String
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let city = City(name: "Milwaukee", population: 23500)
print(city.collectTaxes())


// Mutating methods
struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Mike")
person.makeAnonymous()
print(person)


// Properties and methods of strings
let string = "A thing of beauty is a joy forever!"
print(string.count)
print(string.uppercased())
print(string.sorted())
print(string.hasPrefix("A thing"))


// Properties and methods of arrays
var toys = ["Woody", "Buzz"]
print(toys.count)
print(toys.sorted())
toys.append("Rex")
print(toys)
print(toys.remove(at: 1))
print(toys)
