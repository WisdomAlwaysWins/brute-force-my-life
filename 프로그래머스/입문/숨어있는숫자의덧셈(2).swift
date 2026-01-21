import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.components(separatedBy: CharacterSet.letters).compactMap { Int($0) }.reduce(0, +)
}

print(solution("aAb1B2cC34oOp"))
print(solution("1a2b3c4d123Z"))