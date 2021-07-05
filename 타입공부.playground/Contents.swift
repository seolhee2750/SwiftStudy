import Foundation

let str = "World"
print("Hello, \(str)!")

let a = 10
let b = 20.0
let c = Double(a) + b
print(type(of: a))
print(type(of: b))
print("sum=\(c)")

var d = 20
d += 30
print("d=\(d)")

let arr = [ "Hello", "World" ]
let t = type(of: arr)
let s = "type=\(t)"
print(s)
print(arr[0])
print(arr[1])

// 딕셔너리는 없는 키 값도 부를 수 있고, 그 때는 nil 값을 반환. 따라서 옵셔널로 반환되는 것!!
let dict = [ "Kim": 12, "Lee": 32 ]
print(type(of: dict))
print(dict["Lee"])
