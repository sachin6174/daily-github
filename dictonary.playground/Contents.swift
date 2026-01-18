var carDict : [String : Any] = ["a": "Toyota" ,"b": "Honda" ]

carDict["a"] = "Audi"
if let carName = carDict["a"] as? String {
    print("The car name is \(carName)")
}

var carDictcpy = carDict  // new copy made


carDictcpy["a"] = "bmw"

if let carName = carDict["a"] as? String {
    print("The car name is \(carName)")
}
