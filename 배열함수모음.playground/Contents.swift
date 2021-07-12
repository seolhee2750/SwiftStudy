// 배열 관련 함수 정리

import Foundation

var arr1 = [1, 2, 5, 4, 3]
var arr2 = [1, 2, 5, 4, 3]
var arr3 = [1, 2, 5, 4, 3]


// [ 정렬 ]

arr1.sorted() // 오름차순 정렬
// 오름차순이 default라서 빈 괄호 가능

arr1.sorted(by: <) // 오름차순 정렬
arr1.sorted(by: >) // 내림차순 정렬

arr2.sorted(){$0 > $1} // 오름차순 정렬
arr2.sorted{$0 > $1} // 오름차순 정렬
// 이렇게 클로저 사용한 경우에는 실제 배열에 반영x
print(arr2)

