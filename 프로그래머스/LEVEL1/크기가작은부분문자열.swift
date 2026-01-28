import Foundation

func solution(_ t:String, _ p:String) -> Int {

    let compare = Int(p)!
    var temp: [Int] = []
    var result: Int = 0

    for i in 0..<t.count - p.count + 1 {
        let start = t.index(t.startIndex, offsetBy: i)
        let end = t.index(start, offsetBy: p.count)
        let a = t[start..<end]
        temp.append(Int(a)!)
    }

    for i in 0..<temp.count {
        if compare >= temp[i] {
            result += 1
        }
    }
    print(temp)
    return result
}

print(solution("3141592", "271"))
print(solution("500220839878", "7"))
print(solution("10203", "15"))