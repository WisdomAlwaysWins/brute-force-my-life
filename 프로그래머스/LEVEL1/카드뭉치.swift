import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    
    var rcard1 = Array(cards1.reversed())
    var rcard2 = Array(cards2.reversed())

    
    for g in goal {
        if !rcard1.isEmpty && rcard1.last == g {
            rcard1.removeLast()
            continue
        }
        if !rcard2.isEmpty && rcard2.last == g {
            rcard2.removeLast()
            continue
        }
        return "No"
    }

    return "Yes"
}

print(solution(["i", "drink", "water"], ["want", "to"], ["i", "want", "to", "drink", "water"]))
print(solution(["i", "water", "drink"], ["want", "to"], ["i", "want", "to", "drink", "water"]))