import Cocoa

protocol AutopilotDelegate {
  func activateAutePilot(origin: String, destination: String)
}


class DriverlessSellingpointCabHandler {
  var delegate: AutopilotDelegate?
  
  
  func attendRequests() {
    print("Attending requests")
    
  }
  
  func rentDriverlessCab(origin: String, destination: String) {
    
    delegate?.activateAutePilot(origin: origin , destination: destination)
  }
  }
  

  class Car: AutopilotDelegate {
    
    init(handler: DriverlessSellingpointCabHandler) {
      handler.delegate = self
    }
    func activateAutePilot(origin: String, destination: String) {
      print("Car: Driving from \(origin)to \(destination)")
    }
  }


class Minivan: AutopilotDelegate {
  
  init(handler: DriverlessSellingpointCabHandler) {
    handler.delegate = self
  }
  func activateAutePilot(origin: String, destination: String) {
    print("Minivan: Driving fron \(origin) to \(destination)")
  }
}
  
  let cabHandler = DriverlessSellingpointCabHandler()
  let car1 = Car(handler: cabHandler)
  
  cabHandler.rentDriverlessCab(origin: "Tabuk",
  destination: "jeddah")
  


