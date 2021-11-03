
protocol AutopilotDelegate {
  
  
  func activateAutopilot(origin: String, destination : String)
}

class DriverlessSellingPointCabHandler {
  var delegate : AutopilotDelegate?
  
  
  func attendRequests() {
    print("Attending requests")
  }
  
  
  func rentDriverlessCab(origin: String, destination: String) {
    delegate?.activateAutopilot(origin: origin, destination: destination)
  }
}


class Car: AutopilotDelegate {
  
  
  func activateAutopilot(origin: String, destination: String) {
    print(" Car: Driving fron \(origin) to \(destination)")
  }
  
  
  init(handler: DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  
  func regulateInteriorTemperature() {
    print("regulating Interior temperature ")
  }
}


class Minivan: AutopilotDelegate {
  
  
  func activateAutopilot(origin : String , destination : String) {
    print(" Minivan : Driving from \(origin) to \(destination)")
  }
  
  
  init(handler: DriverlessSellingPointCabHandler ) {
    handler.delegate = self
  }
  
  
  func regulateInteriorTemperature() {
    print("regulating Interior temperature ")
  }
}

let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk", destination: "Makkah")



