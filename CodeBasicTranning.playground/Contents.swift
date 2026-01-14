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
