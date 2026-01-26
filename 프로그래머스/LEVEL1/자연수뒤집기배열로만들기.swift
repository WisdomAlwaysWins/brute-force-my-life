func solution(_ n:Int64) -> [Int] {
    return String(n).map { Int(String($0))! }.reversed()
}

print(solution(12345))
print(solution(250476))