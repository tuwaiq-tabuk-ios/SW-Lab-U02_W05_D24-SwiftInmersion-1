protocol AutopilotDelegate {
  func activateAutoPoil(origin: String, destination: String)
}

class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?
  
  func attendRequests() {
    print("Attending requests")
  }
  
  func rentDriverlessCab(origin: String, destination: String){
    delegate?.activateAutoPoil(origin: origin, destination: destination)
  }
}


class Car: AutopilotDelegate {
  
  func activateAutoPoil(origin: String, destination: String) {
    print("Car: Driving fron \(origin) to \(destination)")
  }
  
  init(handler: DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  
  func regulateInteriorTemperature(){
    print("Regulating interior temperature")
  }
}


class Minivan: AutopilotDelegate{
  
  func activateAutoPoil(origin: String, destination: String) {
    print("Minivan: Driving fron \(origin) to \(destination)")
  }
  
  init(handler: DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  func regulatenInteriorTemperature(){
    print("regulating Interior temperature ")
    
  }
  }
  

let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler:cabHandler )

cabHandler.rentDriverlessCab(origin: "Tabuk", destination: "Duba")

