import Foundation

let T = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<T {
    let line = readLine()!.components(separatedBy: " ").map { Int($0)! }
    arr.append(line[0] + line[1])
}

for i in 0..<T {
    print(arr[i])
}