// 구조체와 클래스의 차이점은
// 값 타입과 참조 타입의 차이점이라고 볼 수도 있겠다.

import Foundation

struct PersonStruct {
    var name: String
    var age: Int
}

class PersonClass {
    var name: String = ""
    var age: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// ===== [ 클래스 값 변경 ] =====

// let으로 선언해도, 참조한 클래스의 값을 바꾸는 것이므로
// 값을 변경하는데에 문제가 없다. (클래스 안에서 var로 선언했다면!)
let pClass1 = PersonClass(name: "설희", age: 1)
let pClass2 = pClass1
pClass2.age = 2

// 값을 변경했을 때 참조한 클래스의 값을 변경한 것이므로 똑같이 2로 출력된다.
print(pClass1.age) // 2
print(pClass2.age) // 2


// ===== [ 구조체 값 변경 ] =====

// 참조한 구조체의 값을 변경하는 것이 아닌, 복사해온 값을 변경하는 것이므로
// let으로 선언 시 값 변경이 불가하다. 따라서 이렇게 var로 선언해주어야만 한다.
// (클래스와 마찬가지로 구조체 안에서 선언될 때도 var로 선언되어있어야만 한다.)
var pStruct1 = PersonStruct(name: "설희", age: 1)
var pStruct2 = pStruct1
pStruct2.age = 2

// 복사해온 값을 변경하는 것이므로 각각 1, 2로 다르게 출력된다.
print(pStruct1.age) // 1
print(pStruct2.age) // 2
