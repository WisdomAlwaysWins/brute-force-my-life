import Foundation

func solution(_ s:String) -> String {
    var dict: [Character: Int] = [:]

    for c in s {
        dict[c, default:0] += 1
    }

    let result = dict.filter { $0.value == 1 }.map { $0.key }.sorted()

    return String(result)
}

print(solution("abcabcadc"))