import Foundation

var arr = [1, 3, 2, 5, 4]

// 인라인 클로저 (기본 형태)
arr.sorted(by: {(first: Int, second: Int) -> Bool in return first > second })

// 후행 클로저
arr.sorted() {(first: Int, second: Int) -> Bool in return first > second}

// 매개변수, 리턴 타입 생략
arr.sorted() {(first, second) in return first > second}

arr.sorted(by: {$0 < $1})
arr.sorted{$0 < $1}

arr.sorted(by: <)
