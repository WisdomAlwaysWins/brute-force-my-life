import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var x: Int = -1
    var y: Int = -1

    let _ = sizes.map { 
        $0.sorted() 
    }.forEach {
        if x < $0[0] {
            x = $0[0]
        }

        if y < $0[1] {
            y = $0[1]
        }
    }

    return x * y
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
print(solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]))
print(solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]))