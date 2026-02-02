// 최대공약수와 최소공배수
import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 { return b }
    return gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / gcd(a, b)
}

let input = readLine()!.split(separator: " ").map { Int($0)! }

print(gcd(input[0], input[1]))
print(lcm(input[0], input[1]))