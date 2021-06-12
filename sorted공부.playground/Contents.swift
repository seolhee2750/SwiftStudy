import UIKit

var str = "54321"
var num = 54321
var arr = ["5", "4", "3", "2", "1"]

str.sorted()
String(str.sorted())

arr.joined()
arr.sorted().joined()

//var arr2 = String(num).sorted()
//arr2.joined()

var arr2 = String(num).sorted().map{String($0)}
arr2.joined()

// 위의 arr2의 타입을 보면 [String.Element]를 가지는 것을 볼 수 있음.
// 하지만 joined는 [String] 타입을 받기 때문에 조인이 불가능 했던 것.
// 그리고 sorted 자체도 [Character] 타입으로 반환하기 때문에
// 저기에 바로 joined를 붙여주는 것도 불가능,,
// 따라서 joined를 쓰고 싶으면 map으로 배열 요소들을 모두 스트링으로
// 바꿔준 후에 사용해야 함.
