import Foundation

let coordinate = (x: 1, y: 2)

switch coordinate {
case (0, 0):
    print("원점입니다.")
case (_, 0): // 구분에 필요없는 요소는 _로 표현 가능
    print("x축입니다.")
case (0, let a): // 원하는 요소 값을 입력받아 사용 가능
    print("y축이며, y좌표는 \(a)입니다.")
default:
    print("(\(coordinate.x), \(coordinate.y))입니다.")
}

// (1, 2)입니다. .
