import UIKit
import Foundation

/*
 문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string의 앞의 n글자로 이루어진 문자열을 return 하는 solution 함수를 작성해 주세요.
*/

func solution1(_ my_string: String, _ n: Int) -> String {
    return String(my_string.prefix(n))
}

print(solution1("ProgrammerS123", 11)) // "ProgrammerS"
print(solution1("He110W0r1d", 5)) // "He110"


/*
 알파벳으로 이루어진 문자열 myString이 주어집니다. 모든 알파벳을 대문자로 변환하여 return 하는 solution 함수를 완성해 주세요.
*/

func solution2(_ myString: String) -> String {
    return myString.uppercased()
}

print(solution2("aBcDeFg"))
print(solution2("AAA"))

/*
 특정 문자를 대문자로 바꾸기
 
 영소문자로 이루어진 문자열 my_string과 영소문자 1글자로 이루어진 문자열 alp가 매개변수로 주어질 때, my_string에서 alp에 해당하는 모든 글자를 대문자로 바꾼 문자열을 return 하는 solution 함수를 작성해 주세요.
*/

func solution3(_ my_string:String, _ alp:String) -> String {
    return String(my_string.replacingOccurrences(of: alp, with: alp.uppercased()))
}

func solution3_1(_ my_string:String, _ alp:String) -> String {
    return String(my_string.map({
        String($0) == alp ? Character(alp.uppercased()) : $0
    }))
}

print(solution3("programmers", "p"))
print(solution3("lowercase", "x"))

print(solution3_1("programmers", "p"))
print(solution3_1("lowercase", "x"))

/*
 순서 바꾸기
 
 정수 리스트 num_list와 정수 n이 주어질 때, num_list를 n 번째 원소 이후의 원소들과 n 번째까지의 원소들로 나눠 n 번째 원소 이후의 원소들을 n 번째까지의 원소들 앞에 붙인 리스트를 return하도록 solution 함수를 완성해주세요.
*/

func solution4(_ num_list:[Int], _ n:Int) -> [Int] {
    return Array(num_list[n...]) + Array(num_list[..<n])
}

print(solution4([2,1,6], 1)) // [1, 6, 2]
print(solution4([5, 2, 1, 7, 5], 3)) // [7, 5, 5, 2, 1]

/*
 조건에 맞게 수열 변환하기 3
 
 정수 배열 arr와 자연수 k가 주어집니다.
 만약 k가 홀수라면 arr의 모든 원소에 k를 곱하고, k가 짝수라면 arr의 모든 원소에 k를 더합니다.
 이러한 변환을 마친 후의 arr를 return 하는 solution 함수를 완성해 주세요.
*/

func solution5(_ arr:[Int], _ k: Int) -> [Int] {
    return k % 2 == 0 ? arr.map { $0 + k } : arr.map { $0 * k }
}

print(solution5([1,2,3, 100, 99, 98], 3)) // [3, 6, 9, 300, 297, 294]
print(solution5([1,2,3, 100, 99, 98], 2)) // [3, 4, 5, 102, 101, 100]

/*
 l로 만들기
 
 알파벳 소문자로 이루어진 문자열 myString이 주어집니다. 알파벳 순서에서 "l"보다 앞서는 모든 문자를 "l"로 바꾼 문자열을 return 하는 solution 함수를 완성해 주세요.
*/

func solution6(_ myString:String) -> String {
    return String(myString.map { $0 < "l" ? "l" : $0 })
}

print(solution6("abcdevwxyz"))
print(solution6("jjnnllkkmm"))

/*
 정수 부분
 
 실수 flo가 매개 변수로 주어질 때, flo의 정수 부분을 return하도록 solution 함수를 완성해주세요.
*/

func solution7(_ flo:Double) -> Int {
    return Int(flo)
}

print(solution7(1.42))
print(solution7(69.32))
print(solution7(69.82))

/*
 문자열 바꿔서 찾기
 
 문자 "A"와 "B"로 이루어진 문자열 myString과 pat가 주어집니다. myString의 "A"를 "B"로, "B"를 "A"로 바꾼 문자열의 연속하는 부분 문자열 중 pat이 있으면 1을 아니면 0을 return 하는 solution 함수를 완성하세요.
*/

func solution8(_ myString:String, _ pat:String) -> Int {
    return String(myString.map { $0 == "A" ? "B" : "A" }).contains(pat) ? 1 : 0
}

print(solution8("ABBAA", "AABB"))
print(solution8("ABAB", "ABAB"))
