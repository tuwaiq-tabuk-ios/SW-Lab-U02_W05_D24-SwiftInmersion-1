import Cocoa

protocol AutopilotDelegate {
  func activateAutoPilot(origin:String,destination:String)
}
class DriverlessSallingPointCabHandler{
  var delegate:AutopilotDelegate?
  
  
  func attendRequests(){
    print("Attending requests")
  }
  
  
  func rentDriverlessCap(origin:String,destination:String){
    delegate?.activateAutoPilot(origin: origin, destination: destination)
  }
}

class Car : AutopilotDelegate{
  init (handler:DriverlessSallingPointCabHandler){
    handler.delegate = self
  }
  func  activateAutoPilot(origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  func regulateInteriorTemperature(){
    print("Regulating interior temperature")
  }
}

class Minivan : AutopilotDelegate{
  init (handler:DriverlessSallingPointCabHandler){
    handler.delegate = self
  }
  func activateAutoPilot(origin: String, destination: String) {
    print("Minivan: Driving from \(origin) to \(destination)")
  }
  func regulateInteriorTemperature(){
    print("Regulating interior temperature")
  }
}

let cabHandler = DriverlessSallingPointCabHandler()
let car1 = Car(handler:cabHandler)
//let miniVan = Minivan(handler:cabHandler)

cabHandler.rentDriverlessCap(origin: "Tabuk", destination: "Duba")
