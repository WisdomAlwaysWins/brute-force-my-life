import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {

    let g = gcd(n, m)
    return [g, g * (n / g) * (m / g)]
}

print(solution(3, 12))
print(solution(2, 5))