import Foundation

func solution(_ array:[Int]) -> Int {  
    return array.map { String($0) }.joined().filter { $0 == "7" }.count
}

print(solution([7, 77, 17]))
print(solution([10, 29]))