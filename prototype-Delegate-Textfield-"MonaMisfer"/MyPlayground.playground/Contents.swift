protocol AutopilotDelegate{
  func activeAutoPilot(origin:String,destination:String)
}

class DriveerlessSellingPointCabHandler{
  var delegate :AutopilotDelegate?
  func attendRequests() {
    print ("Attending requests")
    
  }
  
  
  func rentDriverlessCab(origin:String,destination:String){
    delegate?.activeAutoPilot(origin: origin, destination: destination)
  }
  
}

class Car :AutopilotDelegate {
  
  init(handler:DriveerlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  
  func activeAutoPilot(origin: String, destination: String) {
    print("car: Driving from \(origin) to \(destination)")
  }
  
  
  func regulateInteriorTemperature () {
    print("regulate interior temperature")
  }
}

let cabHandler = DriveerlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)

cabHandler.rentDriverlessCab(origin: "Tabuk",
                             destination: "Duba")


