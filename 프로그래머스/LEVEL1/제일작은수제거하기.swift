func solution(_ arr:[Int]) -> [Int] {

    if arr.count == 1 {
        return [-1]
    }
    
    let a = arr.min()!
    let result = arr

    return result.filter {
        $0 != a
    }
}

print(solution([4,3,2,1]))
print(solution([10]))