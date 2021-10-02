// ARC 레퍼런스 카운팅 방식 구현

import Foundation

class ARC_Example {
    let message: String
    init(message: String) {
        self.message = message
        print("\(message) is being initialized")
    }
    deinit {
        print("\(message) is being deinitialized")
    }
}

// ARC_Example 클래스 타입을 갖는 레퍼런스 변수 2개 A, B
var A: ARC_Example?
var B: ARC_Example?

A = ARC_Example(message: "ARC 동작 코드")
// Prints "ARC 동작 코드 is being initialized"
B = A

A = nil
B = nil
// Prints "ARC 동작 코드 is being initialized"
