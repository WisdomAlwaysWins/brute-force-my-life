func solution(_ n:Int64) -> Int64 {

    let temp = String(n).sorted().reversed().map { String($0) }.joined()

    return Int64(temp)!
}

print(solution(118372))