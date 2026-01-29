import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {

    var stack: [Int] = []
    var result: [Int] = []

    for s in score {
        stack.append(s)
        stack = stack.sorted()

        if stack.count <= k {
            result.append(stack[stack.startIndex])
        } else {
            result.append(stack[stack.count - k])
        }
        
    }

    return result
}

print(solution(3, [10, 100, 20, 150, 1, 100, 200]))
print(solution(4, [0, 300, 40, 300, 20, 70, 150, 50, 500, 1000]))