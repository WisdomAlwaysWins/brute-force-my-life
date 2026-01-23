import Foundation

func solution(_ polynomial:String) -> String {

    var x: Int = 0
    var n: Int = 0

    let temp = polynomial.split(separator: " ").map { String($0) }

    for c in temp {
        if c.contains("x") {
            let a = c.split(separator: "x")
            if a.isEmpty {
                x += 1
            } else {
                x += Int(a[0])!
            }
        } else if c.contains("+") {
            continue
        } else {
            n += Int(c)!
        }
    }

    if x != 0 && n != 0 {
        if x == 1 {
            return "x + \(n)"    
        }
        return "\(x)x + \(n)"
    } else if x == 0 {
        return "\(n)"
    } else {
        if x == 1 {
            return "x"
        }
        return "\(x)x"
    }
}

print(solution("3x + 7 + x"))
print(solution("x + 3 + 9"))