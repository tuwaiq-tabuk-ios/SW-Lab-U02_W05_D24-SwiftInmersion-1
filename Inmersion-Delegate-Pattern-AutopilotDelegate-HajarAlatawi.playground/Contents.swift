

protocol AutopilotDelegate {
  
  func activateAutoPilot(origin: String, destination: String)
}


class DriverlessSellingPointCabHandler {
  
  var delegate: AutopilotDelegate?
  
  
  
  func attenedRequest () {
    
    print("Attending Requests")
  }
  
  
  func rentDriverlessCab(origin: String, destination: String) {
    
    delegate?.activateAutoPilot(origin: origin, destination: destination)
  }
}


class Car: AutopilotDelegate {
  
  
  init(handler: DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  
  func activateAutoPilot (origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  
  
  func regulateInteriorTemperature() {
    print("Regulating interior temperature")
  }
}

let cabHandler = DriverlessSellingPointCabHandler ()
let car1 = Car(handler: cabHandler)


cabHandler.rentDriverlessCab( origin: "Tabuk",
                              destination: "Duba")
