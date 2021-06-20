//Creating a Protocol Demo with Birds, Airplanes and fly() method.

//PROTOCOL
protocol CanFly {
    func fly()
}


//BIRD CLASS
class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
}


//EAGLE CLASS. Needs CanFly Protocol
class Eagle: CanFly {
    
    func fly() {
        print("The Eagle flaps its wings and lift off into the sky.")
    }
    
    func soar() {
        print("The Eagle glids in the air using air currents.")
    }
}


//PENGUIN CLASS. Doesn't need CanFly Protocol
class Penguin: Bird {
    
    func swim() {
        print("The Penguin paddles through the water.")
    }
}


//MUSEUM STRUCT. I can use CanFly Protocol as a Data Type
struct FlyingMuseum {
    
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}


//AIRPLANE STRUCT. It uses CanFly Protocol
struct Airplane: CanFly {
    func fly() {
        print("The Airplane uses its engines to lift off into the air.")
    }
}


let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()


myEagle.fly()

//myPenguin can do Birds things but not fly because its not adopting CanFly Protocol
myPenguin.layEgg()

//myPlane can fly because adopts CanFly Protocol
myPlane.fly()

let myMuseum = FlyingMuseum()
//myMuseum.flyingDemo(flyingObject: myPenguin) CANT ADOPT BECAUSE PENGUIN ITS NOT ADOPTING CAN FLY PROTOCOL
