//: [Previous](@previous)
import Foundation


protocol AutoplotDelegate {
  func activteAutoPilot(origin: String,detination: String)
  
}

class DriverlessSellingPointCabHandler {
  var delegte: AutoplotDelegate?
  func attendRequsts(){
    print("Attending requsts")
  }
  
  func rentDriverlessCab(origin: String,detination: String){
    delegte?.activteAutoPilot(origin: origin,
                              detination: detination)
  }
  
}
class Car: AutoplotDelegate {
  init(handler: DriverlessSellingPointCabHandler){
    handler.delegte = self
  }
  
  func activteAutoPilot(origin: String, detination: String) {
    print("CAr: Driving from \(origin) to \(detination)")
  }
  
  func regulateInteriorTemperature() {
    print("Regulating interior temperature")
    
  }
}

let cbHandIer = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cbHandIer)


cbHandIer.rentDriverlessCab(origin: "Tabuk",
                            detination:"Duba")


