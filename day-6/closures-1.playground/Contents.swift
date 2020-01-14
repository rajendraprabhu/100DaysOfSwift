import UIKit

// 1. Basic closures
let driving = {
    print("I'm driving")
}
driving()


// 2. Accepting parameters
let drivingTo = { (place: String) in
    print("I'm driving to \(place)")
}
drivingTo("San Francisco")


// 3. Returning values
let drivingToWithReturn = { (place: String) -> String in
    return "I'm driving to \(place) and will return shortly"
}
print(drivingToWithReturn("San Jose"))


// 4. Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I have arrived.")
}
travel(action: driving)

//let drivingWithReturn = { () -> String in
//    return "I'm driving"
//}
//
//func travelWithReturn(action: () -> String) {
//    print("I'm getting ready to go")
//    action()
//    print("I have arrived.")
//}
//print(travelWithReturn(action: drivingWithReturn))


// 5. Trailing closure
travel() {
    print("I'm driving in my car with trailing closure")
}

travel {
    print("I'm driving in my car without any parantheses")
}


// 6. Closures as parameters that accept parameters
func travelTo(action: (String) -> Void) {
    print("Getting ready..")
    action("Milpitas")
    print("Just arrived!")
}
travelTo { (place: String) in
    print("I'm driving to \(place) with closure as a parameter that also accepts parameters.")
}


// 7. Closures as parameters that accept parameters
func travelToWithReturn(action: (String) -> String) {
    print("Getting ready to go...")
    print(action("Los Angeles"))
    print("Reached after heavy traffic!")
}
travelToWithReturn { (place: String) -> String in
    return "I'm driving with closure as a parameter that accepts a parameter and also returns value."
}
