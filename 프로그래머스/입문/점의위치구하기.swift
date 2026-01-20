import Foundation

func solution(_ dot:[Int]) -> Int {
    if dot[0] > 0 { // 1, 4
        if dot[1] > 0 {
            return 1
        } else {
            return 4
        }
    } else { 
        if dot[1] > 0 {
            return 2
        } else {
            return 3
        }
    }
}

print(solution([2,4]))
print(solution([-7,9]))