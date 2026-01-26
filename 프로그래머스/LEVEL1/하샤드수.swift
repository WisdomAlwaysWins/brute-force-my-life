func solution(_ x:Int) -> Bool {

    let temp = String(x).reduce(0) {
        $0 + Int(String($1))!
    }
    return x % temp == 0 ? true : false
}

print(solution(10))
print(solution(12))
print(solution(11))
print(solution(13))
