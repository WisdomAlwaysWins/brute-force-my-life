import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    
    let length = numbers.count
    var result = 0

    for i in 1..<k {

        if i < length-1-k {
            result += 2
        } else {
            result = (result + 2) % length
        }
    }
    
    return result + 1
}

print(solution([1,2,3,4], 2))
print(solution([1,2,3,4,5,6], 5))
print(solution([1,2,3], 3))