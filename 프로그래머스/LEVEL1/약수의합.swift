func solution(_ n:Int) -> Int {
    var result: Int = 0

    for i in 1...n {
        if n % i == 0 {
            result += i
        }
    }

    return result
}

print(solution(12))
print(solution(5))