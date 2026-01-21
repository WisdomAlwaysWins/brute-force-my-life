import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {

    var result: [String] = []

    for i in 0..<picture.count {
        let a = picture[i].map {
            String(repeating: $0, count: k)
        }.joined()

        for _ in 0..<k {
            result.append(a)
        }
    }

    return result
}

print(solution([".xx...xx.", "x..x.x..x", "x...x...x", ".x.....x.", "..x...x..", "...x.x...", "....x...."], 2))
print(solution(["x.x", ".x.", "x.x"], 3))