import Foundation

func solution(_ my_string:String) -> Int {

    let tokens = my_string.split(separator: " ")

    var result = Int(tokens[0])!
    var index = 1

    while index < tokens.count {
        let op = tokens[index]
        let value = Int(tokens[index + 1])!

        if op == "+" {
            result += value
        } else {
            result -= value
        }

        index += 2
    }

    return result
}

print(solution("3 + 4"))