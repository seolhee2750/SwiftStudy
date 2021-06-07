//
// nil 활용 예제 만들기
// nil은 특정 타입에 대한 값의 부재를 나타낸다.

import Foundation

let str1 = "123a"
let str2 = "123"

print(Int(str1) == nil ? 0 : 1)
print(Int(str2) == nil ? 0 : 1)
