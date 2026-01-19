/*
문자열이 몇 번 등장하는지 세기

문자열 myString과 pat이 주어집니다. 
myString에서 pat이 등장하는 횟수를 return 하는 solution 함수를 완성해 주세요.
*/

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var result = 0
    
    for i in 0...(myString.count - pat.count) {
        let start = myString.index(myString.startIndex, offsetBy: i)
        let end = myString.index(start, offsetBy: pat.count)
        
        if myString[start..<end] == pat {
            result += 1
        }
    }
    return result
}

print(solution("banana", "ana"))
print(solution("aaaa", "aa"))