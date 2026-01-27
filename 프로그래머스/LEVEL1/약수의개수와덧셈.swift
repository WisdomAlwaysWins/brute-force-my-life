import Foundation

func solution(_ left:Int, _ right:Int) -> Int {

    var result = 0

    for i in left...right {
        var temp = 0

        for j in 1...i {
            if i % j == 0 {
                temp += 1
            }
        }

        if temp % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }

    return result
}

print(solution(13, 17))
print(solution(24, 27))