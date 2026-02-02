// 수 찾기

let N = readLine()!
let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

let setA = Set(a)

let M = readLine()!
let b = readLine()!.split(separator: " ").map { Int($0)! }

var result = ""

for num in b {
    if setA.contains(num) {
        result += "1\n"
    } else {
        result += "0\n"
    }
}

print(result)