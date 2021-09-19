import Foundation

 
// ============ [ 저장 프로퍼티 ] ============

// ----------------------------------------
// (1) 인스턴스 저장 프로퍼티 (Stored Property)
// => 저장 프로퍼티는 클래스, 구조체 안에서 변수와 상수를 담기 위해 사용한다.

struct Info1_sp {
    let name: String = "설희" // 상수 저장 프로퍼티
    var age: Int = 0 // 변수 저장 프로퍼티
}

class Info2_sp {
    let name: String = "설희" // 상수 저장 프로퍼티
    var age: Int = 0 // 변수 저장 프로퍼티
    
    // 이니셜라이저 지정
    // => 초깃값을 지정하지 않았거나,
    // 지정했더라도 후에 값 변경이 있을 경우 이니셜라이저를 지정해주어야 한다.
    init(age: Int) {
        self.age = age
    }
}

// 구조체는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이져가 있다.
let printInfo1: Info1_sp = Info1_sp(age: 1)

// 클래스는 사용자 정의 이니셜라이저를 호출하여 사용한다.
// 그렇지 않으면 프로퍼티 초깃값을 할당할 수 없어 인스턴스 생성이 불가하다.
let printInfo2: Info2_sp = Info2_sp(age: 2)


// ----------------------------------------
// (1)-1 인스턴스 저장 프로퍼티의 좋은 사용 예시
// => 옵셔널과 이니셜라이저를 적절히 사용!

struct Place {
    var placeName: String
}

class Position {
    var position: Place? // 현재 위치를 모를수도 있으므로 옵셔널로 지정
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

// 필수 값만 먼저 할당하고, 값이 있어도 없어도 상관없는 프로퍼티는
// 옵셔널로 지정하여 위치를 지정하고 싶을 때 지정할 수 있다.
let nowPosition: Position = Position(name: "설희")
nowPosition.position = Place(placeName: "집")
