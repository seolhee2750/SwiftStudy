import Foundation

// 나머지 수들 사이에는 띄어쓰기 한 번
// 3과 4 사이에 띄어쓰기 네 번, 5뒤에 띄어쓰기 한 번
var str = "1 2 3    4 5 "

var a = str.components(separatedBy: " ")
var b = str.split(separator: " ")

print(a)
print(b)

// empty subsequence 반환 비교
