import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    guard let result = array.min(by: { (a: Int, b: Int) -> Bool in
        let da = abs(a - n)
        let db = abs(b - n)
        return da == db ? a < b : da < db
    }) else {
        return 0
    }

    return result
}

print(solution([3,10,28], 20))
print(solution([10, 11, 12], 13))