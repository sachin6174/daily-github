
//https://www.youtube.com/watch?v=HdhJjc7Y6iw&t=798s
// code to show cyclic dependency
//class BankAccount {
//    var person : Person? = nil
//    var accountNumber : String
//    
//    init(_accountNumber : String) {
//        self.accountNumber = _accountNumber
//        print("BankAccount obj allocated")
//    }
//    deinit {
//        print("BankAccount obj deallocated")
//    }
//    
//}
//
//class Person {
//    var name : String
//    var bankAccount : BankAccount? = nil
//    
//    init (_name :String){
//        self.name = _name
//        print("Person obj allocated")
//    }
//    deinit{
//        print("Person obj deallocated")
//    }
//}

// show cyclic dependency // Strong reference  cycle
//var sachinBankAccount : BankAccount? = BankAccount(_accountNumber: "123456")
//var sachinPerson : Person? = Person(_name: "sachin")
//sachinPerson?.bankAccount = sachinBankAccount
//sachinBankAccount?.person = sachinPerson
//
//sachinBankAccount = nil
//sachinPerson = nil
// this can be break by seting a relation to nil eg-
//sachinPerson?.bankAccount = nil
//sachinBankAccount = nil
//sachinPerson = nil
// end  cyclic dependency // Strong reference  cycle





// weak keyword use
//class BankAccount {
//    weak var person : Person? = nil
//    var accountNumber : String
//
//    init(_accountNumber : String) {
//        self.accountNumber = _accountNumber
//        print("BankAccount obj allocated")
//    }
//    deinit {
//        print("BankAccount obj deallocated")
//    }
//
//}
//
//class Person {
//    var name : String
//    var bankAccount : BankAccount? = nil
//
//    init (_name :String){
//        self.name = _name
//        print("Person obj allocated")
//    }
//    deinit{
//        print("Person obj deallocated")
//    }
//}
//
//
//var sachinBankAccount : BankAccount? = BankAccount(_accountNumber: "123456")
//var sachinPerson : Person? = Person(_name: "sachin")
//sachinPerson?.bankAccount = sachinBankAccount
//sachinBankAccount?.person = sachinPerson
//
//sachinBankAccount = nil
//sachinPerson = nil



// weak vs unowned keyword use
// weak should be used when in objct relationship one object can be nil
//eg  in a company all employee may not have project , so this can be marked as weak
// weak will be used with mutable type only (var)
// we have to set prop as optional also

//class Employee {
//    weak var project : Project? = nil // it should be var only we can change it later
//}
//
//class Project {}

// unowned
// a bank account can not be made without a person // it should be a req property , we should not use weak
// unowned can be used with required as well as optional

class BankAccount {
    unowned var person : Person
    var accountNumber : String

    init(_accountNumber : String , _person :Person) {
        self.accountNumber = _accountNumber
        self.person = _person
        print("BankAccount obj allocated")
    }
    deinit {
        print("BankAccount obj deallocated")
    }

}

class Person {
    var name : String
    var bankAccount : BankAccount? = nil

    init (_name :String){
        self.name = _name
        print("Person obj allocated")
    }
    deinit{
        print("Person obj deallocated")
    }
}

var sachinPerson : Person? = Person(_name: "sachin")
var sachinBankAccount : BankAccount? = BankAccount(_accountNumber: "123456", _person: sachinPerson!)
sachinPerson = nil
sachinBankAccount = nil
