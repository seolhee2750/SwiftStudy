import Foundation

let N = Int(readLine()!)!
let topHeight = readLine()!.split(separator: " ").map{Int($0)!}
var res = [Int](repeating: 0, count: N)
var stack = [Int]()

stack.append(topHeight[0])

for i in 1..<N {
    if topHeight[i] > stack[stack.count-1] {
        stack.append(topHeight[i])
        
        for j in stack {
            if topHeight[i] < j { // i > 1 삭제함. i는 당연히 1보다 크기때문에 필요 없을 듯. (최상위 for문 확인)
                res[i] = topHeight.firstIndex(of: j)! + 1
            }
        }
        // 호성님은 스택에 쌓인 마지막 수보다 현재 입력 수가 크면 계속 쌓고,
        // 쌓인 스택에서 처음부터 확인하여 현재 입력된 탑의 높이가 더 작아지면
        // topHeight에서 해당 인덱스를 찾아 res에 더해줌.
    }
    else {
        res[i] = topHeight.firstIndex(of: stack[stack.count-1])! + 1
        stack.append(topHeight[i])
    }
}
print(res.map { String($0) }.joined(separator: " "))

