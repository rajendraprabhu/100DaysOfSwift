import UIKit

// 01 Arrays
let colorsArray = ["red", "green", "blue"]
let secondColor = colorsArray[1]

// 02 Sets
let colorsSet = Set(colorsArray)
let colorsSetWithDups = Set(["red", "blue", "green", "red"])

// 03 Tuples
var name = (first: "Johnny", last: "Appleseed")
let firstName = name.first
let lastName = name.1
name = (first: "Jane", last: "Hopman")

// 05 Dictionaries
let dict = [
    1: "First",
    2: "Last"
]
let firstValue = dict[1]

// 06 Dictionaries - default value
let defaultValue = dict[0, default: "Unknown"]

// 07 Empty collections
var teamColors = [String: String]()
teamColors["John"] = "Yellow"

var scores = [Int]()
scores.append(44)

var set = Set<String>()
set.insert("Hello")

// 08 Enums

enum Result {
    case success
    case failure
}

let result: Result = .success

// 09 Enums - associated values

enum Activity {
    case talking(about: String)
    case driving(to: String)
}

let activity: Activity = .talking(about: "NFL")

// 10 Enums - raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let planet = Planet(rawValue: 2)

