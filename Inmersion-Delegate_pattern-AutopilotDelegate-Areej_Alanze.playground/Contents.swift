import UIKit

protocol AutopilotDelegate {
  func activateAutoPilot(origin: String, destination: String)
}

class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?
  
  
  func attendRequests(){
    print("Attending requests")
  }
  
  func rentDriverIessCab(origin: String, destination: String){
    delegate?.activateAutoPilot(origin: origin, destination: destination)
  }
}


class Car: AutopilotDelegate {
  
  init(handler: DriverlessSellingPointCabHandler){
    handler.delegate = self
  }
  
  
  func activateAutoPilot(origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  
  
  func regulateInteriorTemperature(){
    print("Regulating interior temperature")
  }
  
  
}


let cabHndler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHndler)
//let miniVan = Minivan(handler: cabHandler)


cabHndler.rentDriverIessCab(origin: "Tabuk",
                            destination: "Duba")
