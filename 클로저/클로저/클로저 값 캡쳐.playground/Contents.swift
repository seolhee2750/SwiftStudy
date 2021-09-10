import Foundation

// [ 값 캡쳐 기본 형태 ]

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()

count // 3


// [ 중첩 함수로 보는 값 캡쳐 ]

func add(num: Int) -> (() -> Int) {
    var total = 0
    func adding() -> Int {
        total += num
        return total
    }
    return adding
}

let add_1 = add(num: 1)
let add_2 = add(num: 1)

add_1() // 1
add_1() // 2
add_1() // 3

add_2() // 1
add_2() // 2
add_2() // 3
