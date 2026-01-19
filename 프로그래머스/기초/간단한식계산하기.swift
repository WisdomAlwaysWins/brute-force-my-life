/*
간단한 식 계산하기

문자열 binomial이 매개변수로 주어집니다. 
binomial은 "a op b" 형태의 이항식이고 a와 b는 음이 아닌 정수, op는 '+', '-', '*' 중 하나입니다. 
주어진 식을 계산한 정수를 return 하는 solution 함수를 작성해 주세요.
*/

import Foundation

func solution(_ binomial:String) -> Int {
    let temp = binomial.split(separator: " ").map { String($0) }
    let a: Int = Int(temp[0])!
    let b: Int = Int(temp[2])!

    switch temp[1] {
        case "+" : return a + b
        case "-" : return a - b
        case "*" : return a * b
        default : return 0
    }
}

print(solution("43 + 12"))
print(solution("0 - 7777"))
print(solution("40000 * 40000"))