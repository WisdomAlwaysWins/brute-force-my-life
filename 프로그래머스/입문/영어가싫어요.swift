import Foundation

func solution(_ numbers:String) -> Int64 {
    let wordToNumber: [String: String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]

    var result = numbers

    for (word, digit) in wordToNumber {
        result = result.replacingOccurrences(of: word, with: digit)
    }
    
    return Int64(result)!
}

print(solution("onetwothreefourfivesixseveneightnine"))
print(solution("onefourzerosixseven"))