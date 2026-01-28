import Foundation

func solution(_ food:[Int]) -> String {

    var temp: [String] = []

    for i in 1..<food.count {
        for _ in 0..<food[i] / 2 {
            temp.append(String(i))
        }
    }

    print(temp.joined())
    
    return temp.joined() + "0" + temp.joined().reversed()
}

print(solution([1,3,4,6]))
print(solution([1,7,1,2]))