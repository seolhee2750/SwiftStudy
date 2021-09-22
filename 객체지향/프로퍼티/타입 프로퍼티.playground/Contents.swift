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

seolhee_Info.age = 2
print(seolhee_Info.name) // 설희
print(seolhee_Info.age) // 2


