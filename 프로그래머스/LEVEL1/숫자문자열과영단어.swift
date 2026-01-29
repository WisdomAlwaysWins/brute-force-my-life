import Foundation

func solution(_ s:String) -> Int {

    let words = [
        "zero" : "0",
        "one" : "1",
        "two" : "2",
        "three" : "3",
        "four" : "4",
        "five" : "5",
        "six" : "6",
        "seven" : "7",
        "eight" : "8",
        "nine" : "9"
    ]

    var result = s

    for (word, number) in words {
        result = result.replacingOccurrences(of: word, with: number)
    }

    return Int(result)!
}

print(solution("one4seveneight"))
print(solution("23four5six7"))
print(solution("2three45sixseven"))
print(solution("123"))