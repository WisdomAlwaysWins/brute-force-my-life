/*
특정 문자열로 끝나는 가장 긴 부분 문자열 찾기

문자열 myString과 pat가 주어집니다. 
myString의 부분 문자열중 pat로 끝나는 가장 긴 부분 문자열을 찾아서 return 하는 solution 함수를 완성해 주세요.
*/

import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    var temp = myString
    
    while temp.hasSuffix(pat) == false {
        temp = String(temp.dropLast())
    } 
    return temp
}

print(solution("AbCdEFG", "dE"))
print(solution("AAAAaaaa", "a"))