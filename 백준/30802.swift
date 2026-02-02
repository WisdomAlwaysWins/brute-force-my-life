// 웰컴 키트

// 티셔츠 6가지 사이즈 - T장 묶음
// 펜 1가지 - P 자루 묶음 또는 한 자루씩

// N명의 참가자
// 티셔츠는 남아도 되지만, 부족해서는 안됨
// 펜은 정확히 참가자 수만큼 준비되어야함

// 최소 몇 묶음, 최대 몇 묶음, 한자루씩 몇개 주문해야하는지

let N: Int = Int(readLine()!)!

let shirts: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
let temp = readLine()!.split(separator: " ").map { Int($0)! }

let T = temp[0]
let P = temp[1]

var t = 0
var p = 0


for shirt in shirts {
    if shirt % T != 0 {
        t += shirt / T + 1
    } else {
        t += shirt / T
    }
}

print(t)

print(N / P , N % P)