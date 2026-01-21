import Foundation

func solution(_ sides:[Int]) -> Int {
    
    let maxSide = max(sides[0], sides[1])
    let minSide = min(sides[0], sides[1])

    let start = maxSide - minSide + 1
    let end = maxSide + minSide - 1

    return max(0, end - start + 1)
}

print(solution([1,2]))
print(solution([3,6]))
print(solution([11,7]))