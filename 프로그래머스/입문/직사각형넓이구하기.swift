import Foundation

func solution(_ dots:[[Int]]) -> Int {

    let xs = dots.map { $0[0] }.sorted()
    let ys = dots.map { $0[1] }.sorted()

    let x = xs[xs.count-1] - xs[0]
    let y = ys[ys.count-1] - ys[0]
    
    return x * y
}

print(solution([[1, 1], [2, 1], [2, 2], [1, 2]]))
print(solution([[-1, -1], [1, 1], [1, -1], [-1, 1]]))