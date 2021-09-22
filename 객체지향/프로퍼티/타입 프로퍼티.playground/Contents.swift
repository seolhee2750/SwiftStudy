import Foundation

// ============ [ 타입 프로퍼티 ] ============

// ----------------------------------------
// (1) 저장 타입 프로퍼티
// => 저장 프로퍼티 앞에 static 키워드를 붙인 것.
// 초깃값 필수, 자동으로 지연 연산된다.
// 다중 스레드 환경에서도 한 번만 초기화 보장!
// 변수, 상수 모두로 선언 가능

class seolhee_Info {
    static let name: String = "설희"
    static var age: Int = 1
}

// 인스턴스에 접근할 필요 없이 타입 이름만으로 프로퍼티 사용 가능
seolhee_Info.age = 2 // var로 선언된 경우 값 변경도 가능
print(seolhee_Info.name) // 설희
print(seolhee_Info.age) // 2


// ----------------------------------------
// (2) 연산 타입 프로퍼티
// => 연산 프로퍼티 앞에 static 키워드를 붙인 것.
// 변수로만 선언 가능

class seolhee_Info2 {
    static var introduce: String {
        return "설희"
    }
}

print(seolhee_Info2.introduce) // 설희
seolhee_Info2.introduce
