//EXAMPLE OF PROTOCOLS AND DELEGATES

//PROTOCOL
protocol AdvancedLifeSupport {
    func performCPR()
}


//MY CLASS WITH THE DELEGATE VAR AND THE PROTOCOL
class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assesSituation() {
        print("Can you tell me what happended?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR() //Mientras adopte otra clase o estructura el protocolo, delega sin importar y puede realizar CPR
    }
}



struct Paramedic: AdvancedLifeSupport {
    
    //INITIALIZE WHO THE HANDLER IS. IN THIS CASE EmergencyCallHandler CLASS
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    
}



class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    
    func useSthescope() {
        print("Listening for heart sounds.")
    }
}


//SURGEON CLASS INHERIT FROM DOCTOR
class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees.")
    }
    
    func useElectricDrill() {
        print("Wirr...")
    }
}


let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio) //ANGELA KNOWS WHO THE HANDLER IS

emilio.assesSituation()
emilio.medicalEmergency()
