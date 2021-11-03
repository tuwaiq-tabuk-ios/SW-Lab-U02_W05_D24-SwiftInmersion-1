func sayHello(toInt value: Int  ){
  print ("Hello world \(value)")
}

func SayHello(toInt value: String ){
  print ("Hello world \(value)")
}
func SayHello(toInt value: Double  ){
  print ("Hello world \(value)")
}

func SayHello(toInt value: Float  ){
  print ("Hello world \(value)")
}

//func SayHello<T>(to value:T){
 // print ("Hello world /(value)")
//}

func SayHello(to value: Any){
   print("Hello world \(value)")
}

SayHello(to: 4)
SayHello(to: "string")
SayHello(to: Double.pi)

