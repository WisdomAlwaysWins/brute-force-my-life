import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted(by: {
        if abs(n - $0) == abs(n - $1) {
            return $0 > $1
        }
        return abs(n - $0) < abs(n - $1)
    })
}

print(solution([1, 2, 3, 4, 5, 6], 4))
print(solution([10000,20,36,47,40,6,10,7000], 30))