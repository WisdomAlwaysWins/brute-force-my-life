import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {

    var total: Int = n
    var result: Int = 0

    while  total > a-1 {

        let temp = b * (total / a) + total % a
        result += (total / a) * b

        total = temp
    }

    return result
}

print(solution(2,1,20))
print(solution(3,1,20))