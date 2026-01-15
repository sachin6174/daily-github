//https://www.youtube.com/watch?v=ptpivKdpPv0&list=PLV7VzbWXa60EiWHqcH_pNjuVYxW0JpcET&index=33
import Foundation






class Foo {
    lazy var x: Int? = {
        print("x")
        return nil
    }()
    func y() ->  Int? {
        print("y")
        return x ?? 4
    }
    let z : () -> Int? = {
        print("z")
        return 6
    }
}

let foo = Foo()
print(foo.y() ?? foo.z())
