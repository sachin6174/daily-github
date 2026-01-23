import Foundation
class ContentViewModel {

    // Define a global variable
    var sharedValue: Int = 0

    func operation() {

        // Create a concurrent queue
//        let concurrentQueue = DispatchQueue(label: "codecat15", attributes: .concurrent)
        // concurrent cause racr
        let concurrentQueue = DispatchQueue(label: "codecat15")
        
        // Perform concurrent reads and writes to the shared variable
        concurrentQueue.async {
            self.sharedValue = 42
        }

        concurrentQueue.async {
            print(self.sharedValue) // Reading the shared variable
        }
    }
}
