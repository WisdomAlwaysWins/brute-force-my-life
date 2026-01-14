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
