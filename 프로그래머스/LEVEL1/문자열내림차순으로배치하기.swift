func solution(_ s:String) -> String {
    
    let lower = s.filter {
        String($0) == $0.lowercased()
    }.sorted(by: >).map { String($0) }.joined()

    let upper = s.filter {
        String($0) == $0.uppercased()
    }.sorted(by: >).map { String($0) }.joined()

    return lower + upper
}

print(solution("Zbcdefg"))

print(solution("abZ"))