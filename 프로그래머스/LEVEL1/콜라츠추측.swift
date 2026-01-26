func solution(_ num:Int) -> Int {
    var result: Int = 0
    var temp = num

    while temp > 1 {
        if temp % 2 == 0 {
            temp /= 2
            result += 1
        } else {
            temp = temp * 3 + 1
            result += 1
        }
        print(temp)
    }
    return result > 500 ? -1 : result
}

print(solution(6))
print(solution(16))
print(solution(626331))