import Foundation

func solution(_ number:[Int]) -> Int {

    let len = number.count
    var result = 0

    for i in 0..<len-2 {
        for j in i+1..<len-1 {
            for k in j+1..<len {
                if (number[i] + number[j] + number[k] == 0) {
                    result += 1
                }
            }
        }
    }

    return result
}

print(solution([-2, 3, 0, 2, -5]))
print(solution([-3, -2, -1, 0, 1, 2, 3]))
print(solution([-1, 1, -1, 1]))