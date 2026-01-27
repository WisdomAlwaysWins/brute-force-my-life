func solution(_ phone_number:String) -> String {

    let len = phone_number.count

    return phone_number.enumerated().map { i, ch in
        i < len - 4 ? "*" : ch
    }.map(String.init).joined()
}

print(solution("01033334444"))
print(solution("027778888"))