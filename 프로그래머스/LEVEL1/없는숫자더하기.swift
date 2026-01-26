import Foundation

func solution(_ numbers:[Int]) -> Int {

    var result: Int = (1...9).reduce(0, +)

    for number in numbers {
        result -= number
    }

    return result
}

print(solution([1,2,3,4,6,7,8,0]))
print(solution([5,8,4,0,6,7,9]))