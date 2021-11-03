import UIKit

protocol AutopilotDelegate {
  func activateAutoPilot(origin: String, destination: String)
}

class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?



func attendRequests() {
  print("Attending requests")
}

func rentDriverlessCab(origin: String, destination: String) {
  delegate?.activateAutoPilot(origin: origin,
                              destination: destination)
 }
}

class Car: AutopilotDelegate {
  func activateAutoPilot(origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  
  
  init(handler: DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }

  func regulateInteriorTemprature() {
    print("Regulating interior temprature")
  }
}

let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)
//let miniVan = MiniVan(Handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk",
                             destination: "Duba")

