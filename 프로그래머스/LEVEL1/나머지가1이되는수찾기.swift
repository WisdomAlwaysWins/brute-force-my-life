import Foundation

func solution(_ n:Int) -> Int {

    for i in 2..<n {
        if n % i == 1 {
            return i
        }
    }

    return -1
}

print(solution(10))
print(solution(12))