// 참고
//
// https://turume.tistory.com/entry/Swift-%EC%89%BD%EA%B2%8C-%EC%9D%B4%ED%95%B4%ED%95%98%EB%8A%94-%EC%88%9C%EC%97%B4%EA%B3%BC-%EC%A1%B0%ED%95%A9
//

import Foundation

func permuDFS(phase: Int) {
    if phase == r {
        print(result)
        return
    }
    else {
        for i in (0..<numbers.count) {
            if checkList[i] == false {
                checkList[i] = true
                result[phase] = numbers[i]
                permuDFS(phase: phase + 1)
                checkList[i] = false
            }
        }
    }
}

let numbers = [1, 2, 3]
let r = 2

var result = [Int](repeating: 0, count: r)
var checkList = [Bool](repeating: false, count: numbers.count)

permuDFS(phase: 0)
