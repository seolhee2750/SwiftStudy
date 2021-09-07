import Foundation

// String, Double 타입을 갖는 튜플 (다양한 타입을 한 튜플에 포함 가능)
let person: (String, Double) = ("설희", 169.8)

let x = person.0
let y = person.1

print(x) // 설희
print(y) // 169.8

// 타입 추론으로 선언도 가능
// 위와 같이 그냥 인덱스로 값 표현도 가능하지만, 요소마다 이름 붙이는 것도 가능
let dog = (name: "다온", age: 5)

print(dog.name, dog.age) // 다온 5
