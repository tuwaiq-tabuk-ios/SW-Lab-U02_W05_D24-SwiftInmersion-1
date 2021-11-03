protocol AutopilotDelegate{
  func activiteAutoPilot( origin: String, destination: String)
}

class DriverlessSellingPointCabHandler {
  var delegate: AutopilotDelegate?
  func attendRequests(){
    print ("Attending requests")
  }
  
  
  
  func rentDriverlessCab( origin: String, destination: String) {
    delegate?.activiteAutoPilot(origin: origin, destination: destination)
  }
  
}


class Car: AutopilotDelegate {
  func activiteAutoPilot(origin: String, destination: String) {
    
  }
  
 init(handler: DriverlessSellingPointCabHandler) {
    handler.delegate = self
  }
  
  func activeteAutopilot(origin:String, destination: String){
    print ("Car: Driving from \(origin) to \(destination)")
  }
  
  
  func regulateInteriorTemperature() {
    print("Regulating interior temperature")
  }
}
  
  class Minivan: AutopilotDelegate {
    func activiteAutoPilot(origin: String, destination: String) {
    }
  
   init(handler: DriverlessSellingPointCabHandler){
      handler.delegate = self
      
   }
      func activeteAutopilot(origin:String, destination: String){
        print ("Car: Driving from \(origin) to \(destination)")
        
      }
    
      func regulateInteriorTemperature() {
        print("Regulating interior temperature")
      }
   
   }
  
