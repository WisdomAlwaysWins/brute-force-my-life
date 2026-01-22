import Foundation

func solution(_ score:[[Int]]) -> [Int] {

    let sums = score.map { $0[0] + $0[1] }

    let sorted = sums.sorted(by: >)

    return sums.map { sum in sorted.firstIndex(of: sum)! + 1}
}

print(solution([[80, 70], [90, 50], [40, 70], [50, 80]]))
print(solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]]))