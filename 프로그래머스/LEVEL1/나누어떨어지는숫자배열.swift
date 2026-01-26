func solution(_ arr:[Int], _ divisor:Int) -> [Int] {

    var result: [Int] = []

    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }

    if result.isEmpty {
        return [-1]
    } else {
        return result.sorted()
    }
}

print(solution([5,9,7,10], 5))
print(solution([2, 36, 1, 3], 1))
print(solution([3, 2, 6], 10))