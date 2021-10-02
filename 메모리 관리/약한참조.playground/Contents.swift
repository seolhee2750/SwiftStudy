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
var test2: Example_B? = Example_B() // Example_B 참조 횟수 : 1 (Prints "bein

test1?.A = test2 // Example_B 참조 횟수 : 2
test2?.B = test1 // Example_A 참조 횟수 : 1
// => Example_B의 B프로퍼티는 weak 키워드를 사용하여 Example_A를 약한참조하므로!!
// Example_A를 참조한건 맞지만 카운트가 증가되지는 않음.

test1 = nil // Example_A 참조 횟수 : 0, Example_B 참조 횟수 : 1 (Prints "being deinitialized")
print(test2?.B) // Prints "nil"
test2 = nil // Example_B 참조 횟수 : 0 (Prints "being deinitialized")
// => 문제없이 메모리 해제 완료!
