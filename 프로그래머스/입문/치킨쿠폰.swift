import Foundation

func solution(_ chicken:Int) -> Int {

    var coupon = chicken
    var result = 0

    while coupon >= 10 {
        let service = coupon / 10
        result += service
        coupon = (coupon % 10) + service
    }
    return result
}

print(solution(100))
print(solution(1081))