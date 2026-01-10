//Defer block
// multiple defer one after other
// defer inside defer
// combinations of defer
// defer is a piece of block which get executed after each and every line of function is executed , even after return sttatement
// if multiple defer are there then  defer calling oreder in reverse , last in first out
import Foundation
var a = 5
@MainActor func updateAndReturn() -> Int{
    defer {
        a = a + 1 // this will be executed after return
    }
    return a
}

print(updateAndReturn())
print(a)


func deferSeries(){
    print("0")
    defer {
        print("1")
    }
    defer {
        print("2")
    }
    defer {
        print("3")
    }
    print("4")
}

deferSeries() // 0 4 3 2 1 out put

func deferInsideDefer(){
    print()
    print("0")
    defer {
        print("1")
        defer {
            print("2")
        }
        defer {
            print("3")
        }
        print("4")
    }
    defer {
        print("5")
    }
    print("6")

}

deferInsideDefer()
