import UIKit

func plus(_ num: Int) -> Int {
    return num + 1
}

func minus(_ num: Int) -> Int{
    return num - 1
}

func calculate(_ a: Int, _ b: Int) -> Int {
    return plus(a) + plus(b)
}

let p = plus
let m = minus

calculate(p(1), m(2))
// 5
