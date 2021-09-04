import Foundation

var value = 10

func increaseValue(_ n: inout Int) -> Int {
    n += 1
    return n
}

print(increaseValue(&value))

// inout 파라미터 사용하면 인자 값 변경 가능!
