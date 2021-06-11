import UIKit

//// 정상적인 강제 추출
//var num1: Int? = 1
//var num2: Int = num1!
//
//print(num1, num2)

//// 오류가 발생하는 강제 추출
//var a: Int? = nil
//var b: Int = a!
//
//print(a, b)

////옵셔널 바인딩을 이용한 옵셔널 추출
//var num: Int? = nil
//
//if var number = num {
//    number = 2
//    print(number)
//}
//else {
//    print("num is nil")
//}

class Person {
    var name: String
    var info: Info?
    
    init(name: String) {
        self.name = name
    }
}

class Info {
    var phoneNum: Int
    var adress: Adress?
    
    init(phoneNum: Int) {
        self.phoneNum = phoneNum
    }
}

class Adress {
    var city: String
    var street: String?
    
    init(city: String) {
        self.city = city
    }
}

// 옵셔널 체이닝
//let seolheeInfo: String? = seolhee.info?.adress?.street

let seolhee: Person = Person(name: "seolhee")

seolhee.info = Info(phoneNum: 0000)
seolhee.info?.adress = Adress(city: "인천")
seolhee.info?.adress?.street = "계양구"

// 옵셔널 바인딩과 체이닝의 결합
if let information: String = seolhee.info?.adress?.street {
    print(information)
}
else {
    print("Can not find")
}

