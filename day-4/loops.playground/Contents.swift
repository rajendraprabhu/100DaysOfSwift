import UIKit

// #1 For loops
let numbers = 1...10
for number in numbers {
    print("Number is: \(number)")
}

let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna")
for _ in 1...5 {
    print("play")
}


// #2 While loops
let threshold = 20
var counter = 1
while counter <= threshold {
    print(counter)
    counter += 1
}
print("Ready or not, here I come!")


// #3 Repeat loops
counter = 1
repeat {
    print(counter)
    counter += 1
} while counter <= threshold
print("Ready or not, here I come!")


// #4 Exiting loops
var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored.. duh!")
        break
    }
    
    countDown -= 1
}
print("Blast off!")


// #5 Exiting multiple loops
outerLoop: for i in 1...5 {
    print("Outer: \(i)")
    for j in 1...5 {
        print("Inner: \(j)")
        if j == 4 {
            break outerLoop
        }
    }
}


// #6 Skipping items
for i in 1...10 {
    if i%2 == 1 {
        continue
    }
    print(i)
}


// #7 Infinite loops
counter = 0
while true {
    print("_")
    counter += 1
    
    if counter == 273 {
        break
    }
}
