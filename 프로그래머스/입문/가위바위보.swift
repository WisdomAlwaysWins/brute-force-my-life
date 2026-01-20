/*
가위 바위 보

가위는 2 바위는 0 보는 5로 표현합니다. 가위 바위 보를 내는 순서대로 나타낸 문자열 rsp가 매개변수로 주어질 때, rsp에 저장된 가위 바위 보를 모두 이기는 경우를 순서대로 나타낸 문자열을 return하도록 solution 함수를 완성해보세요.
*/

import Foundation

func solution(_ rsp:String) -> String {
    // 가위 2
    // 바위 0
    // 보 5

    var result: [String] = []

    for index in rsp.indices {
        if rsp[index] == "2" {
            result.append("0")
        } else if rsp[index] == "0" {
            result.append("5")
        } else {
            result.append("2")
        }
    }

    return result.joined()
}

print(solution("2"))
print(solution("205"))