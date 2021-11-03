
protocol AutopilotDelegate{
  func activateAutoPilot (origin:String, destination:String)
}


class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?
  
  
  func attendRequests() {
    print("Attending requests")
  }
  func rentDriverlessCab(origin: String , destination:String){
    delegate?.activateAutoPilot(origin: origin, destination: destination)
  }
  
}

class Car:AutopilotDelegate{
  init(handler:DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  
  func activateAutoPilot(origin: String, destination: String) {
    print("Driving from \(origin) to \(destination)")
  }
  func regulateInteriorTepmperature(){
    print("Regulating Interior Temperature")
  }
}

class MiniVan:AutopilotDelegate{
  init(handler:DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  
  func activateAutoPilot(origin: String, destination: String) {
    print("Driving from \(origin) to \(destination)")
  }
  func regulateInteriorTepmperature(){
    print("Regulating Interior Temperature")
  }
}
let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk", destination: "Duba")

let car2 = MiniVan(handler: cabHandler)
cabHandler.rentDriverlessCab(origin: "Cuba", destination: "New Jersy")
