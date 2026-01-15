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

/*
 정수 찾기
 
 정수 리스트 num_list와 찾으려는 정수 n이 주어질 때, num_list안에 n이 있으면 1을 없으면 0을 return하도록 solution 함수를 완성해주세요.
*/

func solution9(_ num_list:[Int], _ n:Int) -> Int {
    return num_list.contains(n) ? 1 : 0
}

print(solution9([1, 2, 3, 4, 5], 3)) // 1
print(solution9([15, 98, 23, 2, 15], 20)) // 0

/*
 배열의 원소 삭제하기
 
 정수 배열 arr과 delete_list가 있습니다. arr의 원소 중 delete_list의 원소를 모두 삭제하고 남은 원소들은 기존의 arr에 있던 순서를 유지한 배열을 return 하는 solution 함수를 작성해 주세요.
*/

func solution10(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    return arr.filter { delete_list.contains($0) == false }
    
}

print(solution10([293, 1000, 395, 678, 94], [94, 777, 104, 1000, 1, 12])) // [293, 395, 678]
print(solution10([110, 66, 439, 785, 1], [377, 823, 119, 43])) // [110, 66, 439, 785, 1]

/*
 꼬리 문자열
 
 문자열들이 담긴 리스트가 주어졌을 때, 모든 문자열들을 순서대로 합친 문자열을 꼬리 문자열이라고 합니다. 꼬리 문자열을 만들 때 특정 문자열을 포함한 문자열은 제외시키려고 합니다. 예를 들어 문자열 리스트 ["abc", "def", "ghi"]가 있고 문자열 "ef"를 포함한 문자열은 제외하고 꼬리 문자열을 만들면 "abcghi"가 됩니다.

 문자열 리스트 str_list와 제외하려는 문자열 ex가 주어질 때, str_list에서 ex를 포함한 문자열을 제외하고 만든 꼬리 문자열을 return하도록 solution 함수를 완성해주세요.
*/
func solution11(_ str_list:[String], _ ex:String) -> String {
    
    var result: String = ""
    for str in str_list {
        if !str.contains(ex) {
            result += str
        }
    }
    return result
    
    /*
     return str_list.filter { $0.contains(ex) }.reduce("", +)
     */
}

print(solution11(["abc", "def", "ghi"], "ef"))
print(solution11(["abc", "bbc", "cbc"], "c"))

/*!
 0 떼기
 
 정수로 이루어진 문자열 n_str이 주어질 때, n_str의 가장 왼쪽에 처음으로 등장하는 0들을 뗀 문자열을 return하도록 solution 함수를 완성해주세요.
*/

func solution12(_ n_str:String) -> String {
    var result = n_str
    
    while result.first == "0" {
        result.removeFirst()
    }
    return result
}

print(solution12("0010"))
print(solution12("854020"))

/*
 부분 문자열
 
 어떤 문자열 A가 다른 문자열 B안에 속하면 A를 B의 부분 문자열이라고 합니다. 예를 들어 문자열 "abc"는 문자열 "aabcc"의 부분 문자열입니다.

 문자열 str1과 str2가 주어질 때, str1이 str2의 부분 문자열이라면 1을 부분 문자열이 아니라면 0을 return하도록 solution 함수를 완성해주세요.
*/

func solution13(_ str1:String, _ str2:String) -> Int {
    return str2.contains(str1) ? 1 : 0
}

print(solution13("abc", "aabcc"))
print(solution13("tbt", "tbbttb"))

/*
 조건에 맞게 수열 변환하기 1
 
 정수 배열 arr가 주어집니다. arr의 각 원소에 대해 값이 50보다 크거나 같은 짝수라면 2로 나누고, 50보다 작은 홀수라면 2를 곱합니다. 그 결과인 정수 배열을 return 하는 solution 함수를 완성해 주세요.
*/

func solution14(_ arr:[Int]) -> [Int] {
    return arr.map {
        if ($0 >= 50 && $0 % 2 == 0) {
            return $0 / 2
        } else if ( $0 < 50 && $0 % 2 == 1) {
            return $0 * 2
        } else {
            return $0
        }
    }
}

print(solution14([1,2,3, 100, 99, 98]))

/*
 조건에 맞게 수열 변환하기 2
 
 정수 배열 arr가 주어집니다. arr의 각 원소에 대해 값이 50보다 크거나 같은 짝수라면 2로 나누고, 50보다 작은 홀수라면 2를 곱하고 다시 1을 더합니다.

 이러한 작업을 x번 반복한 결과인 배열을 arr(x)라고 표현했을 때, arr(x) = arr(x + 1)인 x가 항상 존재합니다. 이러한 x 중 가장 작은 값을 return 하는 solution 함수를 완성해 주세요.

 단, 두 배열에 대한 "="는 두 배열의 크기가 서로 같으며, 같은 인덱스의 원소가 각각 서로 같음을 의미합니다.
*/

func solution15(_ arr:[Int]) -> Int {
    
    var current = arr
    var next: [Int] = []
    var x: Int = -1
    
    while(true) {
        next = current.map {
            if ($0 >= 50 && $0 % 2 == 0) {
                return $0 / 2
            } else if ($0 < 50 && $0 % 2 == 1) {
                return $0 * 2 + 1
            } else {
                return $0
            }
        }

        x += 1
        
        if current == next {
            break;
        } else {
            current = next
        }
    }
    return x
}

print(solution15([1, 2, 3, 100, 99, 98]))

/*
 1로 만들기
 
 정수가 있을 때, 짝수라면 반으로 나누고, 홀수라면 1을 뺀 뒤 반으로 나누면, 마지막엔 1이 됩니다. 예를 들어 10이 있다면 다음과 같은 과정으로 1이 됩니다.

 10 / 2 = 5
 (5 - 1) / 2 = 2
 2 / 2 = 1
 위와 같이 3번의 나누기 연산으로 1이 되었습니다.

 정수들이 담긴 리스트 num_list가 주어질 때, num_list의 모든 원소를 1로 만들기 위해서 필요한 나누기 연산의 횟수를 return하도록 solution 함수를 완성해주세요.
*/

func solution16(_ num_list:[Int]) -> Int {
    
    var result = 0
    for num in num_list {
        
        var x = -1
        var temp = num
        
        while (temp != 0) {
            if (temp % 2 == 0) {
                temp /= 2
            } else {
                temp = (temp - 1) / 2
            }
            x += 1
        }
        result += x
    }
    
    return result
}

print(solution16([12, 4, 15, 1, 14]))

/*
 길이에 따른 연산
 
 정수가 담긴 리스트 num_list가 주어질 때, 리스트의 길이가 11 이상이면 리스트에 있는 모든 원소의 합을 10 이하이면 모든 원소의 곱을 return하도록 solution 함수를 완성해주세요.
*/

func solution17(_ num_list:[Int]) -> Int {
    return num_list.count >= 11 ?
        num_list.reduce(0, +) : num_list.reduce(1, *)
}

print(solution17([3, 4, 5, 2, 5, 4, 6, 7, 3, 7, 2, 2, 1]))
print(solution17([2, 3, 4, 5]))

/*
 원하는 문자열 찾기
 
 알파벳으로 이루어진 문자열 myString과 pat이 주어집니다. myString의 연속된 부분 문자열 중 pat이 존재하면 1을 그렇지 않으면 0을 return 하는 solution 함수를 완성해 주세요.

 단, 알파벳 대문자와 소문자는 구분하지 않습니다.
*/

func solution18(_ myString:String, _ pat:String) -> Int {
    return myString.uppercased().contains(pat.uppercased()) ? 1 : 0
}

print(solution18("AbCdEfG", "aBc"))
print(solution18("aaAA", "aaaaa"))

/*
 소문자로 바꾸기
 
 알파벳으로 이루어진 문자열 myString이 주어집니다. 모든 알파벳을 소문자로 변환하여 return 하는 solution 함수를 완성해 주세요.

 단, 알파벳 대문자와 소문자는 구분하지 않습니다.
*/

func solution19(_ myString:String) -> String {
    return myString.lowercased()
}

print(solution19("aBcDeFg"))
print(solution19("aaa"))

/*
 배열에서 문자열 대소문자 변환하기
 
 문자열 배열 strArr가 주어집니다. 모든 원소가 알파벳으로만 이루어져 있을 때, 배열에서 홀수번째 인덱스의 문자열은 모든 문자를 대문자로, 짝수번째 인덱스의 문자열은 모든 문자를 소문자로 바꿔서 반환하는 solution 함수를 완성해 주세요.
*/
func solution20(_ strArr:[String]) -> [String] {
    return strArr.enumerated().map {
        if $0.offset % 2 == 0 {
            return $0.element.lowercased()
        } else {
            return $0.element.uppercased()
        }
    }
}

print(solution20(["AAA","BBB","CCC","DDD"]))
print(solution20(["aBc","AbC"]))

/*
 A 강조하기
 
 문자열 myString이 주어집니다. myString에서 알파벳 "a"가 등장하면 전부 "A"로 변환하고, "A"가 아닌 모든 대문자 알파벳은 소문자 알파벳으로 변환하여 return 하는 solution 함수를 완성하세요.
*/

func solution21(_ myString:String) -> String {
    return myString.lowercased().replacingOccurrences(of: "a", with: "A")
}

print(solution21("abstract algebra"))
print(solution21("PrOgRaMmErS"))

/*
 부분 문자열인지 확인하기
 
 부분 문자열이란 문자열에서 연속된 일부분에 해당하는 문자열을 의미합니다. 예를 들어, 문자열 "ana", "ban", "anana", "banana", "n"는 모두 문자열 "banana"의 부분 문자열이지만, "aaa", "bnana", "wxyz"는 모두 "banana"의 부분 문자열이 아닙니다.

 문자열 my_string과 target이 매개변수로 주어질 때, target이 문자열 my_string의 부분 문자열이라면 1을, 아니라면 0을 return 하는 solution 함수를 작성해 주세요.
*/

func solution22(_ my_string:String, _ target:String) -> Int {
    return my_string.contains(target) ? 1 : 0
}

print(solution22("banana", "ana"))
print(solution22("banana", "wxyz"))

/*
 문자열로 변환
 
 정수 n이 주어질 때, n을 문자열로 변환하여 return하도록 solution 함수를 완성해주세요.
*/

func solution23(_ n:Int) -> String {
    return String(n)
}

print(solution23(123))
print(solution23(2573))

/*
 뒤에서 5등 위로
 
 정수로 이루어진 리스트 num_list가 주어집니다. num_list에서 가장 작은 5개의 수를 제외한 수들을 오름차순으로 담은 리스트를 return하도록 solution 함수를 완성해주세요.
*/

func solution24(_ num_list:[Int]) -> [Int] {
    return Array(num_list.sorted().dropFirst(5))
}

print(solution24([12, 4, 15, 46, 38, 1, 14, 56, 32, 10]))

/*
 문자열 정수의 합
 
 한 자리 정수로 이루어진 문자열 num_str이 주어질 때, 각 자리수의 합을 return하도록 solution 함수를 완성해주세요.
*/

func solution25(_ num_str:String) -> Int {
    return num_str.map { Int(String($0))! }.reduce(0, +)
}

print(solution25("123456789"))
print(solution25("1000000"))

/*
 문자열을 정수로 변환하기
 
 숫자로만 이루어진 문자열 n_str이 주어질 때, n_str을 정수로 변환하여 return하도록 solution 함수를 완성해주세요.
*/

func solution26(_ n_str:String) -> Int {
    return Int(n_str)!
}

print(solution26("10"))
print(solution26("8542"))

/*
 뒤에서 5등까지

 정수로 이루어진 리스트 num_list가 주어집니다. num_list에서 가장 작은 5개의 수를 오름차순으로 담은 리스트를 return하도록 solution 함수를 완성해주세요.
*/

func solution27(_ num_list:[Int]) -> [Int] {
    return num_list.sorted().dropLast(num_list.count - 5)
}

print(solution27([12, 4, 15, 46, 38, 1, 14]))

/*
 배열의 길이에 따라 다른 연산하기
 
 정수 배열 arr과 정수 n이 매개변수로 주어집니다. arr의 길이가 홀수라면 arr의 모든 짝수 인덱스 위치에 n을 더한 배열을, arr의 길이가 짝수라면 arr의 모든 홀수 인덱스 위치에 n을 더한 배열을 return 하는 solution 함수를 작성해 주세요.
*/

func solution28(_ arr:[Int], _ n:Int) -> [Int] {
    if arr.count % 2 == 0 {
        return arr.enumerated().map {
            if $0.offset % 2 == 1 {
                return $0.element + n
            } else {
                return $0.element
            }
        }
    } else {
        return arr.enumerated().map {
            if $0.offset % 2 == 0 {
                return $0.element + n
            }
            return $0.element
        }
    }
}

print(solution28([49, 12, 100, 276, 33], 27))
print(solution28([444, 555, 666, 777], 100))

/*
 배열 비교하기
 
 이 문제에서 두 정수 배열의 대소관계를 다음과 같이 정의합니다.

 - 두 배열의 길이가 다르다면, 배열의 길이가 긴 쪽이 더 큽니다.
 - 배열의 길이가 같다면 각 배열에 있는 모든 원소의 합을 비교하여 다르다면 더 큰 쪽이 크고, 같다면 같습니다.
 
 두 정수 배열 arr1과 arr2가 주어질 때, 위에서 정의한 배열의 대소관계에 대하여 arr2가 크다면 -1, arr1이 크다면 1, 두 배열이 같다면 0을 return 하는 solution 함수를 작성해 주세요.
*/

func solution29(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count > arr2.count {
        return 1
    } else if arr1.count < arr2.count {
        return -1
    } else {
        var temp1 = arr1.reduce(0, +)
        var temp2 = arr2.reduce(0, +)
        
        if temp1 > temp2 {
            return 1
        } else if temp1 < temp2 {
            return -1
        } else {
            return 0
        }
    }
}

print(solution29([49, 13], [70, 11, 2]))
print(solution29([100, 17, 84, 1], [55, 12, 65, 36]))

/*
 주사위 게임 1

 1부터 6까지 숫자가 적힌 주사위가 두 개 있습니다. 두 주사위를 굴렸을 때 나온 숫자를 각각 a, b라고 했을 때 얻는 점수는 다음과 같습니다.

 a와 b가 모두 홀수라면 a2 + b2 점을 얻습니다.
 a와 b 중 하나만 홀수라면 2 × (a + b) 점을 얻습니다.
 a와 b 모두 홀수가 아니라면 |a - b| 점을 얻습니다.
 두 정수 a와 b가 매개변수로 주어질 때, 얻는 점수를 return 하는 solution 함수를 작성해 주세요.
*/

func solution30(_ a:Int, _ b:Int) -> Int {
    
    var oddA = a % 2 == 0 ? false : true
    var oddB = b % 2 == 0 ? false : true
    
    if oddA == true && oddB == true {
        return a * a + b * b
    } else if oddA == false && oddB == false {
        return abs(a-b)
    }
    else {
        return 2 * (a + b)
    }
}

