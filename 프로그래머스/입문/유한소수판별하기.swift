import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    var resultA = a
    var resultB = b

    var temp: [Int] = []

    var i = 2
    while i <= resultA && i <= resultB {
        if resultA % i == 0 && resultB % i == 0 {
            resultA /= i
            resultB /= i
        } else {
            i += 1
        }
    }

    // resultB 소인수
    i = 2

    while resultB > 1  {
        if resultB % i == 0 {
            temp.append(i)
            resultB = resultB / i
        } else {
            i += 1
        }
    }

    let result = temp.filter { return $0 != 2 && $0 != 5 }

    return result.count  > 0 ? 2 : 1
}

print(solution(7, 20))
print(solution(11, 22))
print(solution(12, 21))