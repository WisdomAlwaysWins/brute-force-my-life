import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {

    var result = arr
    let row = arr.count
    let column = arr[0].count

    if row > column {
        for i in 0..<row {
            for _ in column..<row {
                result[i].append(0)
            }
        }
    } else if row < column {
        var temp: [Int] = []
        for _ in 0..<column {
            temp.append(0)
        }
        for _ in row..<column {
            result.append(temp)
        }
    } else {
        return result
    }

    return result
}

print(solution([[572, 22, 37], [287, 726, 384], [85, 137, 292], [487, 13, 876]]))
print(solution([[57, 192, 534, 2], [9, 345, 192, 999]]))
print(solution([[1, 2], [3, 4]]))