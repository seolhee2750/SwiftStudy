import Foundation

class Example_A {
    var A: Example_B?
    init() {
        print("being initialized")
    }
    deinit {
        print("being deinitialized")
    }
}

class Example_B {
    weak var B: Example_A?
    init() {
        print("being initialized")
    }
    deinit {
        print("being deinitialized")
    }
}

var test1: Example_A? = Example_A() // Example_A 참조 횟수 : 1 (Prints "being initialized")
var test2: Example_B? = Example_B() // Example_B 참조 횟수 : 1 (Prints "being initialized")

test1?.A = test2 // Example_B 참조 횟수 : 2
test2?.B = test1 // Example_A 참조 횟수 : 1
// => Example_B의 B프로퍼티는 weak 키워드를 사용하여 Example_A를 약한참조하므로!!
// Example_A를 참조한건 맞지만 카운트가 증가되지는 않음.

test1 = nil // Example_A 참조 횟수 : 0, Example_B 참조 횟수 : 1 (Prints "being deinitialized")
// => Example_A의 참조 횟수만 줄어든게 아니라 Example_B의 참조 횟수까지 같이 줄어듬
// 이건 당연하지만, Example_A가 메모리에서 해제됨과 동시에 Example_A의 프로퍼티인 변수 A도 역할을 끝내게 되므로
// Example_B를 참조하는 것을 그만두게됨. 따라서 Example_B의 참조 횟수도 1 줄어드는 것!!
// print(test2?.B) // Prints "nil"
test2 = nil // Example_B 참조 횟수 : 0 (Prints "being deinitialized")
