/*
x 사이의 개수

문자열 myString이 주어집니다. 
myString을 문자 "x"를 기준으로 나눴을 때 나눠진 문자열 각각의 길이를 순서대로 저장한 배열을 return 하는 solution 함수를 완성해 주세요.
*/

import Foundation

func solution(_ myString:String) -> [Int] {
    var result: [Int] = []
    let arr: [String] = myString.map { String($0) }

    var cnt = 0

    for i in 0..<arr.count {
        if arr[i] == "x" {
            result.append(cnt)
            cnt = 0
        } else {
            cnt += 1
        }
    }
    result.append(cnt)
    
    return result
}

func solution1(_ myString:String) -> [Int] {
    return myString.split(separator: "x", omittingEmptySubsequences: false).map { String($0).count }
}

print(solution1("oxooxoxxox"))
print(solution1("xabcxdefxghi"))