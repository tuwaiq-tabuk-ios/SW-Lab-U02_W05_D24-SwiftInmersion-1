protocol AutopilotDelegate {
  func activateAutoPilot(origin: String, destination: String)
}



class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?
  
  
  func attendRequests() {
    print("Attending requests")
  }
  
  
  func rentDriverlessCab(origin: String, destination: String) {
    delegate?.activateAutoPilot(origin: origin, destination: destination)
    
  }
  
}


class Car: AutopilotDelegate {
  
  
  init(handler: DriverlessSellingPointCabHandler) {
  handler.delegate = self
}


func activateAutoPilot(origin: String, destination: String) {
  print("Car: Driving forn \(origin) to \(destination)")
}


func regulateInteriorTemperature() {
  print("Regulating interior temperature")
}
}

class Minivan: AutopilotDelegate {
  
  
  init(handler: DriverlessSellingPointCabHandler) {
  handler.delegate = self
}


func activateAutoPilot(origin: String, destination: String) {
  print("Minivan: Driving forn \(origin) to \(destination)")
}


func regulateInteriorTemperature() {
  print("Regulating interior temperature")
  
}
}


let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)
//let minivan = Minivan(handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk", destination: "Duba")

