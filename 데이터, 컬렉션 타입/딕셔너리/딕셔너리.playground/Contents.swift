import Foundation

// 순서를 가지지 않으며, 키 값으로 호출!
var dic = ["a": 1, "b": 2, "c":3]

dic["a"] // 1
dic["d"] // nil
// 딕셔너리는 존재하지 않는 키 값 호출해도 오류x, nil 반환
// (배열은 존재하지 않는 인덱스 호출 시 오류 발생함)
// => 옵셔널 바인딩 활용하기 좋음


// [ 옵셔널 바인딩 활용 ]
if let value = dic["a"] { value }
else { print("존재하지 않음") }


// [ 함수 ]
// 배열처럼 함수 사용 가능
dic.isEmpty
dic.count

// 값을 기준으로 정렬도 가능
dic.sorted(by: >)
dic


// [ 값 할당 ]
// 1. 기존 값 변경
dic["a"] = 0
dic // ["c": 3, "a": 0, "b": 2]

// 2. 값 추가
dic["d"] = 4
dic // ["d": 4, "c": 3, "b": 2, "a": 0]

// 3. 값 제거
dic["d"] = nil
dic // ["b": 2, "a": 0, "c": 3]

// => 이미 존재하는 키에 값을 할당하면 값을 변경해주고,
// 존재하지 않는 키에 값을 할당하면 새로운 키, 값을 추가해준다.
// 값 제거를 원할 때는 키에 nil을 할당해준다.


// [ for 반복문 활용 ]

// 1. 쌍으로 반복문
for (k, v) in dic {
    print("\(k), \(v)")
}

// 2. 키만
for k in dic.keys {
    print(k)
}

// 3. 값만
for v in dic.values {
    print(v)
}

// 쌍으로 반복문 돌리기 가능,
// .key와 .values 함수로 키나 값만 받아오는 것도 가능
