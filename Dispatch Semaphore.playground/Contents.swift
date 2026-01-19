//https://www.youtube.com/watch?v=cxH4bgpV8r0
import Foundation

var numberQueue = DispatchQueue(label: "com.sachin.numberQueue")
var stringQueue = DispatchQueue(label: "com.sachin.AlphabetQueue")
let numberSamaphore = DispatchSemaphore(value: 1) // if priority is same then dead lock
let stringSamaphore = DispatchSemaphore(value: 0)
// Semaphore create priority inversion and dead lock condition
func printNum(){
    for i in 1..<27 {
        numberSamaphore.wait()
        print(i ,terminator: ",")
        stringSamaphore.signal()
    }
}

func printAlpha(){
    for i in 65...90 {
        stringSamaphore.wait()
        print(Character(UnicodeScalar(i)!),terminator: ",")
        numberSamaphore.signal()
    }
}
numberQueue.async {
    printNum()
}
stringQueue.async{
    printAlpha()
}

RunLoop.current.run(until: Date(timeIntervalSinceNow: 2))
