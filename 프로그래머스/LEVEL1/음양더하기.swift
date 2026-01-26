import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {

    var result: Int = 0

    for i in 0..<absolutes.count {
        if signs[i] == true {
            result += absolutes[i]
        } else {
            result -= absolutes[i]
        }
    }
    return result
}

print(solution([4,7,12], [true, false, true]))
print(solution([1,2,3], [false, false, true]))