/*
옷가게 할인 받기

머쓱이네 옷가게는 10만 원 이상 사면 5%, 30만 원 이상 사면 10%, 50만 원 이상 사면 20%를 할인해줍니다.
구매한 옷의 가격 price가 주어질 때, 지불해야 할 금액을 return 하도록 solution 함수를 완성해보세요.
*/

import Foundation

func solution(_ price:Int) -> Int {

    if price < 100000 {
        return price
    } else if (100000 <= price && price < 300000) {
        return Int(Double(price) * 0.95)
    } else if (300000 <= price && price < 500000) {
        return Int(Double(price) * 0.9)
    } else {
        return Int(Double(price) * 0.8)
    }
}

print(solution(150000))
print(solution(580000))