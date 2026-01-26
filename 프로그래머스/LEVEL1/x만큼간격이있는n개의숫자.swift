func solution(_ x:Int, _ n:Int) -> [Int64] {

    var answer: [Int64] = []

    for i in 1...n {
        answer.append(Int64(x * i))
    }
    return answer
}

print(solution(2, 5))
print(solution(4, 3))
print(solution(-4, 2))