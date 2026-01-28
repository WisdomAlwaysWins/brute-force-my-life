import Foundation

func solution(_ s: String) -> [Int] {
    var lastIndex: [Character: Int] = [:]
    var result: [Int] = []

    for (i, ch) in s.enumerated() {
        if let last = lastIndex[ch] {
            result.append(i - last)
        } else {
            result.append(-1)
        }
        lastIndex[ch] = i
    }
    return result
}

print(solution("banana"))
print(solution("foobar"))