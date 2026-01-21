import Foundation

func solution(_ order:[String]) -> Int {

    var result: Int = 0

    let americano: Int = 4500
    let latte: Int = 5000

    for i in 0..<order.count {
        if order[i].contains("americano") {
            result += americano
        } else if order[i].contains("latte") {
            result += latte
        } else {
            result += americano
        }
    }
    return result
}

print(solution(["cafelatte", "americanoice", "hotcafelatte", "anything"]))
print(solution(["americanoice", "americano", "iceamericano"]))