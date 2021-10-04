// [ 미소유참조 ]
// 자신이 참조하는 인스턴스가 항상 메모리에 존재할 것이라는 전제를 기반으로 동작
// == 자신이 참조하는 인스턴스는 나 몰래 해제될리 없기 때문에 스스로 nil을 할당할 이유가 없음!
// ==> 따라서 옵셔널, 변수 아니어도 됨
// + 이러한 이유로, 미소유참조를 사용하기 위해서는 내가 참조하는 동안 해당 인스턴스가 메모리에서 해제되지 않을거라는 확신이 있을 때만 사용 가능함.

import Foundation

class Person {
    let name: String
    var car: Car? // 사람은 차를 가지지 않아도 됨 => 강한 참조, 옵셔널로 선언
    
    init(name: String) {
        self.name = name
        print("\(name) being initialized")
    }
    
    deinit {
        print("\(name) being deinitialized")
    }
}

class Car {
    let name: String
    unowned var owner: Person // 차는 꼭 주인이 있어야 함 => 미소유 참조로 선언
    
    init(name: String, owner: Person) {
        self.name = name
        self.owner = owner
        print("\(name) being initialized")
    }
    
    deinit {
        print("\(name) being deinitialized")
    }
}

var seolhee: Person? = Person(name: "seolhee") // Person 인스턴스 참조 횟수 : 1 (Prints "seolhee being initialized")

// Person 인스턴스가 존재하면! Car 클래스 인스턴스를 생성하게 한다. (Person이 있어야 Car도 있을 수 있으므로)
if let person: Person = seolhee {
    person.car = Car(name: "tivoli", owner: person) // Car 인스턴스 참조 횟수 : 1 (Prints "tivoli being initialized")
    // Person 인스턴스 참조 횟수 : 1 (Car의 프로퍼티 owner에 의해 참조가 발생하지만, 미소유참조이므로 카운트되지 않는다.)
}

seolhee = nil // Person 인스턴스 참조 횟수 : 0, Car 인스턴스 참조 횟수 : 0 (Prints "seolhee being deinitialized", "tivoli being deinitialized")
// Person을 참조하는 seolhee에 nil을 할당했으므로 참조 횟수를 1 감소시켜 Person 인스턴스는 메모리에서 해제되고,
// 그로 인해 Person의 프로퍼티 car가 강한참조하는 Car까지 참조 횟수가 1 감소되어 Car 인스턴스 또한 메모리에서 해제된다.
