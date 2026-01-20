/*
특별한 이차원 배열1

정수 n이 매개변수로 주어질 때, 다음과 같은 n × n 크기의 이차원 배열 arr를 return 하는 solution 함수를 작성해 주세요.

arr[i][j] (0 ≤ i, j < n)의 값은 i = j라면 1, 아니라면 0입니다.
*/

import Foundation

func solution(_ n:Int) -> [[Int]] {

    let item: [Int] = Array(repeating: 0, count: n)
    var result: [[Int]] = Array(repeating: item, count: n)

    for i in 0..<n {
        for j in 0..<n {
            if i == j {
                result[i][j] = 1
            }
        }
    }
    return result
}

print(solution(3))
print(solution(6))
print(solution(1))