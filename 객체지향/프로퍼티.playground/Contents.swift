import Foundation

 
// ============ [ 저장 프로퍼티 ] ============

// ----------------------------------------
// (1) 인스턴스 저장 프로퍼티 (Stored Property)
// 저장 프로퍼티는 클래스, 구조체 안에서 변수와 상수를 담기 위해 사용

struct Info1_sp {
    let name: String = "seolhee" // 상수 저장 프로퍼티
    var age: Int = 0 // 변수 저장 프로퍼티
}

class Info2_sp {
    let name: String = "seolhee" // 상수 저장 프로퍼티
    var age: Int = 0 // 변수 저장 프로퍼티
    
    // 이니셜라이저 지정
    init(age: Int) {
        self.age = age
    }
}

// 구조체는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이져가 있다.
let printInfo1: Info1_sp = Info1_sp(age: 1)

// 클래스는 사용자 정의 이니셜라이저를 호출하여 사용한다.
// 그렇지 않으면 프로퍼티 초깃값을 할당할 수 없어 인스턴스 생성이 불가하다.
let printInfo2: Info2_sp = Info2_sp(age: 2)

