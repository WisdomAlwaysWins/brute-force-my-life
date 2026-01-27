func solution(_ s:String) -> Bool {
    let len = s.count
    if len == 4 || len == 6 {
        for i in 0..<len {
            let start = s.index(s.startIndex, offsetBy: i)
            guard let _ = s[start].wholeNumberValue else {
                return false
            }
        }
        return true
    }
    return false
}

print(solution("a1234"))
print(solution("1234"))
print(solution("a234"))