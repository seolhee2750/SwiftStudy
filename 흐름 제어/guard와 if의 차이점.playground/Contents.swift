import Foundation

// [ guard 구문 기본 형태 ]
//
// 함수나 메서드, 반복문 등 블록 내부에 선언
// guard (Bool 타입 값) else {
//     (예외사항 실행문)
//     (제어문 전환 명령어)
// }

// if 구문 활용
for i in 0...3 {
    if i == 2 { print(i) }
    else { continue }
}

// guard 구문 활용
for i in 0...3 {
    guard i == 2 else { continue }
    print(i)
}
