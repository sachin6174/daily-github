
import Foundation
protocol Cake {
    var name : String {get}
    var price : Double {get}
}

class ChocolateCake : Cake {
    var name : String {"ChocolateCake"}
    var price : Double { 100 }
}

class AddExtraCream : Cake {
    var initialCake : Cake
    init (cake :Cake ) {
        self.initialCake = cake
    }
    var name: String {"ExtraCream \(initialCake.name)"}
    var price: Double{ initialCake.price + 20}
    
}
class AddExtraChocoSprinkle : Cake {
    var initialCake : Cake
    init (cake : Cake){
        self.initialCake = cake
    }
    var name : String {"ExtraChocoSprinkle \(initialCake.name)"}
    var price: Double { initialCake.price + 30}
}
var mycake = ChocolateCake()
print(mycake.name)
print(mycake.price)

print("************")
var extraCreamChocolateCake = AddExtraCream(cake: mycake)
print(extraCreamChocolateCake.name)
print(extraCreamChocolateCake.price)


print("************")
var extraChocoSprinkledCake = AddExtraChocoSprinkle(cake: mycake)
print(extraChocoSprinkledCake.name)
print(extraChocoSprinkledCake.price)




/// same thing extensions do
//https://www.youtube.com/watch?v=SWpsW-VptH8&list=PLV7VzbWXa60EiWHqcH_pNjuVYxW0JpcET&index=45
