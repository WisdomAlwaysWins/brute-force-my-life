
import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    
    var students: [Int] = []

    for i in 1...rank.count {
        let index = rank.firstIndex(of: i)!

        if attendance[index] == true {
            students.append(index)
        }
    }

    return students[0] * 10000 + students[1] * 100 + students[2]
}


print(solution([3, 7, 2, 5, 4, 6, 1], [false, true, true, true, true, false, false]	))
print(solution([1, 2, 3], 	[true, true, true]	))