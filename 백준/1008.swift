import Foundation

let input = readLine()!.components(separatedBy: " ").map { Double($0)! }

let result = input[0] / input[1]

print(result)