import Foundation

// 세트는 중복을 허용하지 않고, 순서가 없음
var set: Set<Int> = [1, 2, 3, 3] // {1, 2, 3}

// [ 함수 사용 ]
// 배열처럼 함수 사용 가능
set.isEmpty
set.count

set.contains(4)
set.contains(1)

set.insert(5)
set // {1, 2, 3, 5}

set.remove(1)
set // {2, 3, 5}

// [ 정렬 ]
// 정렬하여 배열로 반환
set.sorted() // [2, 3, 5]
