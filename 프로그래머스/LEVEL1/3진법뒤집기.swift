import Foundation

func solution(_ n:Int) -> Int {
    
    var temp = n
    var result: [Int] = []
    var a: Int = 0
    
    while temp >= 1 {
        result.append(temp % 3)
        temp = temp / 3
    }
    
    result = result.reversed()
    
    for i in 0..<result.count {
        if i == 0 {
            a += 1 * result[i]
        } else {
            a += Int(pow(3.0, Double(i))) * result[i]
        }
    }

    return a
}

print(solution(45))
print(solution(125))