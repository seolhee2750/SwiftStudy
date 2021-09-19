import Foundation

// ============ [ 연산 프로퍼티 ] ============

// ----------------------------------------
// (1) 연산 프로퍼티 (Computed Properties)
// => 클래스, 구조체, 열거형에서 사용!
// 저장 공간을 갖지 않고, 연산하는 프로퍼티이다.
// 값을 변경시키는 것이므로 꼭 var로 선언해야한다.

struct Person {
    // 연산 프로퍼티는 이렇게 다른 저장 프로퍼티를 꼭 필요로 한다.
    // => 연산 프로퍼티 스스로 어떠한 값을 저장하는 것이 아닌,
    // 다른 저장 프로퍼티 값으로 연산을 하는 것이기 때문!
    var name: String = "설희"
    
    // 연산 프로퍼티는 어떠한 값을 저장하는 것이 아니므로, 타입 추론 불가. 따라서 타입 명시 필수!
    var selfIntroduce: String {
        // 접근자 getter (다른 프로퍼티의 값을 얻거나 연산하여 리턴할 때 사용)
        // => 어떤 저장 프로퍼티의 값을 연산하여 반환할 것인지 return 구문 필수
        get {
            return "내 이름은 \(name)야??"
        }
        
        // 설정자 setter (다른 저장 프로퍼티에 값을 저장할 때 사용)
        // => 파라미터로 받은 값을 어떤 저장 프로퍼티에 어떻게 설정할 것인지 구현
        set(name) {
            self.name = "내 이름은 \(name)야!!"
        }
        
        // 아래와 같이 set 파라미터 지정하지 않고, newValue라는 이름으로 사용도 가능!
        /*
        set {
            self.name = "내 이름은 " + newValue + "야!!"
        }
        */
    }
}

var herName: Person = Person()

// get에 접근
print(herName.selfIntroduce) // 내 이름은 설희야??

// set에 접근
herName.selfIntroduce = "설희"
print(herName.name) // 내 이름은 설희야!!

// --> 그냥 연산 프로퍼티(selfIntroduce)를 읽으면 getter가 실행,
// 어떠한 값을 입력하면 setter가 실행!

