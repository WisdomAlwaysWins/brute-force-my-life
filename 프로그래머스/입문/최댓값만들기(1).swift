/*
최댓값 만들기 (1)

정수 배열 numbers가 매개변수로 주어집니다. 
numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.
*/

import Foundation

func solution(_ numbers:[Int]) -> Int {

    var result = 0
    for i in 0..<numbers.count {
        for j in i + 1..<numbers.count {
            let temp = numbers[i] * numbers[j]
            if result < temp {
                result = temp
            } 
        }
    }
    return result
}

print(solution([1,2,3,4,5]))
print(solution([0, 31, 24, 10, 1, 9]))