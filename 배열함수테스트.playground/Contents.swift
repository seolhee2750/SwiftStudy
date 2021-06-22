import UIKit

var arr = [1, 2, 2, 3, 3, 3]
print(arr.filter({$0 == 3}).count)

// filter 사용하면 배열에 있는 숫자 중복 횟수 확인 가능,,!!!!

print(arr.remove(at: 1))
print(arr)

// remove는 먼저 해당 위치 요소를 반환하고 지움!
