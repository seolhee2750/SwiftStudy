import UIKit

var str = "54321"
var num = 54321
var arr = ["5", "4", "3", "2", "1"]

str.sorted()
String(str.sorted())

arr.joined()
arr.sorted().joined()

var arr2 = String(num).sorted()
// arr2.joined()
// 왜 안될까..ㅜㅜ하

