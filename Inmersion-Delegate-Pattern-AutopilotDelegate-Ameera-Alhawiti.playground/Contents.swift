
protocol AutopilotDelegate{
  func activateAutopilot(origin: String, destination: String)
}

class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?
  
  
  func attendRequests(){
    print("Attending requests")
  }
  
  func rentDriverlessCab(origin: String, destination: String){
    delegate?.activateAutopilot(origin: origin, destination: destination)
  }
}


class Car: AutopilotDelegate {
 
  init(handler: DriverlessSellingPointCabHandler){
    handler.delegate = self
  }
  
  func activateAutopilot(origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  
  func regulateInteriorTemperature(){
    print("Regulating interior temperature")
  }
}


class MiniVan: AutopilotDelegate {
 
  init(handler: DriverlessSellingPointCabHandler){
    handler.delegate = self
  }
  
  func activateAutopilot(origin: String, destination: String) {
    print("Car: Driving from \(origin) to \(destination)")
  }
  
  func regulateInteriorTemperature(){
    print("Regulating interior temperature")
  }
}


let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk", destination: "Alwajh")
