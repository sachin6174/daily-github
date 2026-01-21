//https:www.youtube.com/watch?v=OKfv_0FvEf0&list=PLb5R4QC2DtFuSE3wpJAqvFRbal5-7sAwr
import Foundation
// race condition
var money = 1000

func AddMoney(_ amount : Int) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 2.0){
        if money < 0 {
            print("insufficent")
            return
        }
        money += amount
        print(money)

    }
        
}

var queue = DispatchQueue(label: "hello",attributes: [.concurrent])
queue.async {
    AddMoney(-900)
}
queue.async {
    AddMoney(-900)
}
queue.async {
    AddMoney(-900)
}
