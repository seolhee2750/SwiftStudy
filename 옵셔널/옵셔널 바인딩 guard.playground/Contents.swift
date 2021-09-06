import Foundation

let value_1: Int? = nil
let value_2: Int? = 2

// if let 구문을 활용한 옵셔널 바인딩
if let tmp = value_1 { print(tmp, "입니다.") }
else { print("nil 입니다.") }

// guard let 구문을 활용한 옵셔널 바인딩
func PrintValue(_ v: Int?) {
    guard let tmp_g = v else {
        print("nil 입니다.")
        return
    }
    
    print(tmp_g, "입니다.")
}

PrintValue(value_1)
PrintValue(value_2)

// nil 입니다.
// nil 입니다.
// 2 입니다.
