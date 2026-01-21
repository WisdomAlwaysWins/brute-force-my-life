import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {

    var x = 0
    var y = 0

    let maxX = board[0] / 2
    let minX = maxX * -1
    let maxY = board[1] / 2
    let minY = maxY * -1

    for key in keyinput {
        if key == "left" && x > minX {
            x -= 1
        }
        if key == "right" && x < maxX {
            x += 1
        }
        if key == "up" && y < maxY {
            y += 1
        }
        if key == "down" && y > minY {
            y -= 1
        }
    }

    return [x, y]
}

print(solution(["left", "right", "up", "right", "right"], [11,11]))
print(solution(["down", "down", "down", "down", "down"], [7, 9]))