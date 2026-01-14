//https://www.youtube.com/watch?v=hfGtp-t6lJg
import Foundation

func inrcreaseInt (nums :Int) -> Int {
    return 1 + nums
}

func increaseDouble (nums: Double) -> Double {
    return 1.0 + nums
}

func genricIncrease<T:Strideable> (num : T) -> T {
    return num.advanced(by: 1)
}

print (genricIncrease(num: 5))

print (genricIncrease(num: 9.0))
