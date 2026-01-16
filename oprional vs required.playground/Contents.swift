import Foundation

class Person {
    var firstName : String = String()
    var middleName : String?
    var lastName : String = String()
    func printPersonInfo() -> String {
        if middleName != nil {
            return "\(firstName) \(middleName!) \(lastName)"
        }
        return "\(firstName) \(lastName)" // force unwraping
    }
}

var p1 = Person()
p1.firstName = "John"
p1.lastName = "Snow"
//p1.middleName = "S"
print(p1.printPersonInfo()) // will give exception
