func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((min(a, b)...max(a, b)).reduce(0, +))
}

print(solution(3, 5))
print(solution(3, 3))
print(solution(5, 3))