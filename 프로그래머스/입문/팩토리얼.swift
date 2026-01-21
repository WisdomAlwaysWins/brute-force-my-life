import Foundation

func solution(_ n:Int) -> Int {

    var temp = 1

    for i in 1...n {
        temp *= i

        if temp == n {
            return i
        }
        if temp > n {
            return i-1
        }
    }

    return 0
}

print(solution(3628800))
print(solution(7))