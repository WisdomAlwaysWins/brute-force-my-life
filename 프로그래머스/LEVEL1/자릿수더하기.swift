import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    for c in String(n) {
        answer += Int(String(c))!
    }
    
    return answer
}

print(solution(123))
print(solution(987))