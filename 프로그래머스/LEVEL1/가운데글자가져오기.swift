func solution(_ s:String) -> String {
    let len = s.count

    if len % 2 == 0 {
        // 2개
        let start = s.index(s.startIndex, offsetBy: len / 2 - 1)
        let end = s.index(s.startIndex, offsetBy: len / 2)
        return String(s[start...end])
        
    } else {
        // 1개
        let start = s.index(s.startIndex, offsetBy: len / 2)
        return String(s[start])
    }
}

print(solution("abcde"))
print(solution("qwer"))