import Foundation

func solution(_ s:String) -> Int {

    var temp: [Int] = []
    let arr = s.split(separator: " ")

    for i in 0..<arr.count {
        if arr[i] == "Z" {
            let _ = temp.popLast()
        } else {
            temp.append(Int(String(arr[i]))!)
        }
    }

    return temp.reduce(0, +)
}

print(solution("1 2 Z 3"))
print(solution("10 20 30 40"))
print(solution("10 Z 20 Z 1"))
print(solution("10 Z 20 Z"))
print(solution("-1 -2 -3 Z"))