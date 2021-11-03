import Foundation

protocol AutopilotDelegate {
  func activateAutoPilot(origin: String, destination: String)
}


class DriverlessSellingPointCarHandler {
  var delegate: AutopilotDelegate?
  
  func attenRequests() {
    print("Attending requests")
  }
  
  func rentDriverlessCab(origin: String,
                         destination: String) {
    delegate?.activateAutoPilot(origin: origin, destination: destination)
  }
  
}


class Car: AutopilotDelegate {
  
  init(handler: DriverlessSellingPointCarHandler) {
    handler.delegate = self
  }
  
  func activateAutoPilot(origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  
  func regulateInteriorTemperature() {
    print("Regulating interior temperature ")
  }
  
}



class MiniVan: AutopilotDelegate {
  
  init(handler: DriverlessSellingPointCarHandler) {
    handler.delegate = self
  }
  
  func activateAutoPilot(origin: String, destination: String) {
    print("MiniVan: Driving from \(origin) to \(destination)")
  }
  
  func regulateInteriorTemperature() {
    print("Regulating interior temperature ")
  }
  
}


let cabHandler = DriverlessSellingPointCarHandler()
let car = Car(handler: cabHandler)
let miniVan = MiniVan(handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk", destination: "Duba")
