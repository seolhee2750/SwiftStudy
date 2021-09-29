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
    var B: Example_A?
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
test2?.B = test1 // Example_A 참조 횟수 : 2

test1 = nil // Example_A 참조 횟수 : 1
test2 = nil // Example_B 참조 횟수 : 1
