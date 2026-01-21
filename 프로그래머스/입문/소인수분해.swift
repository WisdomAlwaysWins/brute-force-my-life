import Foundation

func solution(_ n:Int) -> [Int] {

    var nn = n
    var result: [Int] = []
    var num: Int = 2

    while nn > 1 {
        if nn % num == 0 {
            if !result.contains(num) {
                result.append(num)
            }
            nn /= num
        } else {
            num += 1
        }
    }
    return result
}

print(solution(12))
print(solution(17))
print(solution(420))