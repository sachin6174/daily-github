// copy on write will only be seen in case of Array (by default) to save memory
import Foundation

struct Person {
    var name : String
}

func address (object: UnsafeRawPointer) -> String {
    let address = Int(bitPattern: object)
    return NSString(format: "%p", address) as String
}


// not applicable in case of single variables
var p1 = Person(name: "temp1")
var p2 = p1
print(address(object: &p1))
print(address(object: &p2))
// both different address

var pArray = [Person(name: "A")]
var pArrayCopy = pArray

print(address(object: &pArray))
print(address(object: &pArrayCopy))
      // both same address as by default copy on write is enabled on array

pArrayCopy.append(Person(name: "kk"))

print(address(object: &pArray))
print(address(object: &pArrayCopy))
// different address as now new copy made

//https://www.youtube.com/watch?v=K7dK13ZZzLI&list=PLV7VzbWXa60EiWHqcH_pNjuVYxW0JpcET&index=22
//https://www.youtube.com/watch?v=rhQqYqwGef4&t=130s
// implement , copy on write on custom data type
