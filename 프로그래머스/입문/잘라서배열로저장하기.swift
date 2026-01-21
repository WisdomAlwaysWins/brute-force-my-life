import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    
    var result: [String] = []
    let chars = Array(my_str)

    for i in stride(from: 0, to: chars.count, by: n) {
        let end = min(i + n, chars.count)
        result.append(String(chars[i..<end]))
    }
    return result
}

print(solution("abc1Addfggg4556b", 6))
print(solution("abcdef123", 3))