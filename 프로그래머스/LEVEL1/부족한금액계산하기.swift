import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let spend = (1...count).map { $0 * price }.reduce(0, +)
    
    return spend > money ? Int64(spend - money) : Int64(0)
}

print(solution(3, 20, 4))