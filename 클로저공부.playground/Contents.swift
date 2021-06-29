import Foundation

var arr = [1, 3, 2, 5, 4]

arr.sorted(by: {(first: Int, second: Int) -> Bool in return first > second })
arr.sorted(by: {$0 < $1})
arr.sorted{$0 < $1}
arr.sorted(by: <)
