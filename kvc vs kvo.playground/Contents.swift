import Foundation
// kvc (key value coding )
// accessing property of object not directly but indirectly
// it must confirm to NSObject
// and that property @objc dynamic var
class Person : NSObject {
    @objc dynamic var name : String
    init (_name : String) {
        self.name = _name
    }
}

// mormal method to access property
var person1 = Person(_name: "Sachin")
print (person1.name )

// method to acces property using kvc
// we are already using in user default
//UserDefaults.standard.value(forKey: "h")

var value = person1.value(forKey: "name")
print(value!)


//kvo  help in observing change in the property value
// adding kvo

//you have observer to save in a variable else it will not work
var observer =  person1.observe(\.name, options: [.old, .new] ,changeHandler: {person,value in
    print("old" , value.oldValue)
    print("new" , value.newValue)
})

person1.name = "Sachin Tendulkar"
person1.name = "Sachin Tendulkar1"
