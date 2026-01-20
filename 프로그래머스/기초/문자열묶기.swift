/*
문자열묶기

문자열 배열 strArr이 주어집니다. 
strArr의 원소들을 길이가 같은 문자열들끼리 그룹으로 묶었을 때 가장 개수가 많은 그룹의 크기를 return 하는 solution 함수를 완성해 주세요.
*/

import Foundation

func solution(_ strArr:[String]) -> Int {

    let arr = strArr.map { $0.count }

    var cnt: [Int: Int] = [:]

    for item in arr {
        cnt[item, default: 0] += 1
    }

    return cnt.values.max() ?? -1
}

print(solution(["a","bc","d","efg","hi"]))