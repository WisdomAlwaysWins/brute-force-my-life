import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var result: [Int] = []

    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]
        let item = array[i-1..<j].sorted()    
        result.append(item[k-1])
    }

    return result
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))