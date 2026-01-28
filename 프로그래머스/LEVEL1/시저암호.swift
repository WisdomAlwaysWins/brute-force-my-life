func solution(_ s: String, _ n: Int) -> String {
    let low = Array("abcdefghijklmnopqrstuvwxyz")
    let up  = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    return String(
        s.map { ch in
            if let idx = low.firstIndex(of: ch) {
                return low[(idx + n) % 26]
            }
            if let idx = up.firstIndex(of: ch) {
                return up[(idx + n) % 26]
            }
            return ch
        }
    )
}

print(solution("AB", 1))
print(solution("z", 1))
print(solution("a B z", 4))