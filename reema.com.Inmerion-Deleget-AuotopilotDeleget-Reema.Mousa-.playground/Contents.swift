import UIKit

protocol AutopilotDelget {
  func activateAutoPilot (origin:String , destination:String)
  
}
class DriverlessSellingPointCabHandler{
  
  var delegat :AutopilotDelget?

func attendRequests(){
  
print("Attending Requests")
}

func rentDriverLesscab(oragin:String,destination:String){
  
  delegat?.activateAutoPilot(origin: oragin, destination: destination)
  
}

}

  class Car : AutopilotDelget {
  
  init(handler: DriverlessSellingPointCabHandler) {
    handler.delegat = self
  }


func activateAutoPilot (origin:String,destination:String){
  print("Car: Driven from \(origin) to \(destination)")
}

func regularteInteriorTemperature(){
  print("Regulating Interior Temperature ")
}
  }
 class MiniVan : AutopilotDelget {

init(handler: DriverlessSellingPointCabHandler) {
  handler.delegat = self
}


func activateAutoPilot (origin:String,destination:String){
print("miniVan: Driven from \(origin) to \(destination)")
}

func regularteInteriorTemperature(){
print("Regulating Interior Temperature ")
}
 }
let cabHandler = DriverlessSellingPointCabHandler()
let car1 = Car(handler: cabHandler)
cabHandler.rentDriverLesscab(oragin: "Tabuk", destination: "Duba")
