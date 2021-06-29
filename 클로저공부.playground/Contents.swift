import Foundation

var arr = [1, 3, 2, 5, 4]

// 인라인 클로저 (기본 형태)
arr.sorted(by: {(first: Int, second: Int) -> Bool in return first > second })

// 후행 클로저
arr.sorted() {(first: Int, second: Int) -> Bool in return first > second}

// 매개변수, 리턴 타입 생략
arr.sorted() {(first, second) in return first > second}

// 단축 인자 이름 사용
arr.sorted{return $0 > $1}

// 암시적 반환 표현
arr.sorted{$0 > $1}

// 연산자의 클로저 대체
arr.sorted(by: >)
