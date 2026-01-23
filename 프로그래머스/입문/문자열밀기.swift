import Foundation

func solution(_ A:String, _ B:String) -> Int {
    
    var a = Array(A)
    let b = Array(B)

    if A == B {
        return 0
    } 

    for i in 0..<A.count {
        a.insert(a.removeLast(), at: 0)
        
        if a == b {
            return i + 1
        }
    }
    return -1
}

print(solution("hello", "ohell"))
print(solution("apple", "elppa"))
print(solution("atat", "tata"))
print(solution("abc", "abc"))