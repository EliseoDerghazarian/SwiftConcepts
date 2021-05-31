import UIKit

//*** STRUCTS ***

struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let eliseo = Person(clothes: "shirt", shoes: "elegant shoes")
let brother = Person(clothes: "T-shirt", shoes: "sneakers")

print(eliseo.clothes)
print(brother.shoes)

eliseo.describe()
brother.describe()

var eliseoCopy = eliseo
eliseoCopy.shoes = "flip flops"

print(eliseo)
print(eliseoCopy)



//*** CLASSES ***

//Example 1
class Persona {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}


//Example 2

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
        
    func sing() {
        print("La la la")
    }
}

//Herencia  class className: SuperClass
class FolkSinger: Singer {
    override func sing() {
        print("Flute, stomping and bells")
    }
}


class SinphonicMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("YAAAAA!")
    }
}

var noelia = Singer(name: "Noelia", age: 25)
noelia.name
noelia.age
noelia.sing()

var esteban = FolkSinger(name: "Esteban", age: 21)
esteban.name
esteban.age
esteban.sing()

noelia = SinphonicMetalSinger(name: "Noelia", age: 25, noiseLevel: 10)
noelia.name
noelia.age
noelia.sing()



