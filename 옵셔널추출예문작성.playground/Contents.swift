import UIKit

//// 정상적인 강제 추출
//var num1: Int? = 1
//var num2: Int = num1!
//
//print(num1, num2)

//// 오류가 발생하는 강제 추출
//var a: Int? = nil
//var b: Int = a!
//
//print(a, b)

//옵셔널 바인딩을 이용한 옵셔널 추출
var num: Int? = nil

if var number = num {
    number = 2
    print(number)
}
else {
    print("num is nil")
}
