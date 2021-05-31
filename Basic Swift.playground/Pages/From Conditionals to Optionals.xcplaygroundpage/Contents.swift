import UIKit

//*** CONDITIONALS ***

//Example 1
var houseIsClean = true


if houseIsClean {
    print("Just tidy up the house.")
} else {
    print("Clean and tidy up the house.")
}


//Example 2
let examScore = Int.random(in: 0...100)

if examScore >= 80 {
    print("You passed without having to take another exam. Congratz!")
} else if examScore >= 60 && examScore < 80 {
    print("You passed the exam. Still one exam remaining")
} else {
    print("You have not approved.")
}



//*** LOOPS ***

//Example 1
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


//Example 2
var animals = ["dog", "cat", "bird"]
var actions = ["barks", "meows", "sings" ]

for i in 0..<animals.count {
    print("A \(animals[i])" + " \(actions[i])")
    
}



//*** SWITCH ***
switch examScore {
case 80...100:
    print("You passed without having to take another exam. Congratz!")
case 61...79:
    print("You passed the exam. Still one exam remaining")
default:
    print("You have not approved.")
}



//*** FUNCTIONS ***

//Option 1
func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString(myString: "Hello")


//Option 2
func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("Hello")


//Option 3
func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLetters(in: "Hello")



//*** OPTIONALS ***

func albumReleased(year: Int) -> String? {
    switch year {
    case 1998: return "Oceanborn"
    case 2002: return "Centruy Child"
    case 2004: return "Once"
    default: return nil
    }
}

let album = albumReleased(year: 2002) ?? "Unknown"
let album2 = albumReleased(year: 2005) ?? "Unknown"

print("The album is \(album) and \(album2)")





