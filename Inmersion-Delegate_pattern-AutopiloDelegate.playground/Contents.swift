import Cocoa

protocol AutopiloDelegate {
func activateAutopilot (origin: String, destination: String)
}

class DriverlessSellingPointCabHandler {
var delegate: AutopiloDelegate?
  
  

func attendRequests() {
print("Attending requests")
}

func rentDriverlessCab(oringin: String, destination: String ) {

delegate?.activateAutopilot(origin: oringin, destination: destination)
}
}


class car: AutopiloDelegate {
init(handler: DriverlessSellingPointCabHandler) {
handler.delegate = self
}

func activateAutopilot (origin: String, destination: String) {

print("Car: Driving from \(origin) to \(destination)")
}

func regulateInteriorTemperatura() {

print("Regulating interior Temperatura")
 }
}
let cabHandler = DriverlessSellingPointCabHandler()
let car1 = car(handler: cabHandler)

cabHandler.rentDriverlessCab(oringin: "Tabuk ", destination: "Duba")
