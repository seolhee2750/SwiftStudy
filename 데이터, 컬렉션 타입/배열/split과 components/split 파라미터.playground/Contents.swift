// split 파라미터 비교

import Foundation

var str = "apple grape cherry peach "

// omittingEmptySubsequences는 빈 시퀀스를 포함하느냐 안하느냐의 유무를 결정.
// true가 기본!
print(str.split(separator: " ", omittingEmptySubsequences: false)) // ["apple", "grape", "cherry", "peach", ""]
print(str.split(separator: " ", omittingEmptySubsequences: true)) // ["apple", "grape", "cherry", "peach"]


// maxSplit은 Int 입력받고, 0보다 크거나 같아야하며 Int.max가 기본값.
print(str.split(separator: " ", maxSplits: 1)) // ["apple", "grape cherry peach "]
print(str.split(separator: " ", maxSplits: 2)) // ["apple", "grape", "cherry peach "]
