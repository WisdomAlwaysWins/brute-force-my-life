import Foundation

func solution(_ s:String) -> Bool {
    var pCnt: Int = 0
    var yCnt: Int = 0

    s.lowercased().forEach {
        if $0 == "p" {
            pCnt += 1
        }
        if $0 == "y" {
            yCnt += 1
        }
    }
    return pCnt == yCnt ? true : false
}

print(solution("pPoooyY"))
print(solution("Pyy"))