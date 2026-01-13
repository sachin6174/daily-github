// default

// designated initilisers

import Foundation
class Person {
    var name : String  // it will as to give default value to name property
    // also it will ask to create  init method (degisanted initilizer ,parameterised constructor)
    var country : String
    init (){
        self.name = "Anonymous"
        self.country = "Anonymous"
        // default
    }
    init ( _name : String){
        self.name = _name
        self.country = "India"
    }
    
    init (_name :String ,_country : String){
        self.name = _name
        self.country = _country
    }
}

struct Employee {
    var name : String
}

var p1 = Person()


// convience initilisers

class Person2 {
    var name : String  // it will as to give default value to name property
    // also it will ask to create  init method (degisanted initilizer ,parameterised constructor)
    var country : String
    init (_name :String ,_country : String){
        self.name = _name
        self.country = _country
    }
    
    convenience init (_name :String){
        self.init(_name: _name , _country: "India")  // seconday initilizers
        // convenience exist with designated initiliser
    }
}


var p12 = Person2(_name: "sachin")


// faliable initiliser


class Person3 {
    var name : String  // it will as to give default value to name property
    // also it will ask to create  init method (degisanted initilizer ,parameterised constructor)
    var country : String
    init? (_name :String ,_country : String){
        if _name.isEmpty {
            return nil
        }
        self.name = _name
        self.country = _country
    }
    
    convenience init? (_name :String){
        self.init(_name: _name , _country: "India")  // seconday initilizers
        // convenience exist with designated initiliser
    }
}
var p123 = Person3(_name: "")
print(p123) // nil will be printed // so for prechecks faliable is used


// required initilisers
// must implement if you are sub classing
// need to do it
//not be done on playgrounds
https:www.youtube.com/watch?v=V5AfCVzUsjU&list=PLV7VzbWXa60EiWHqcH_pNjuVYxW0JpcET&index=8
