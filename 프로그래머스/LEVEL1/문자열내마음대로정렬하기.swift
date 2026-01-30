func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by : {
        let c1 = $0[$0.index($0.startIndex, offsetBy: n)]
        let c2 = $1[$1.index($0.startIndex, offsetBy: n)]
        
        if c1 == c2 {
            return $0 < $1
        } else {
            return c1 < c2
        }
    })
}

print(solution(["sun", "bed", "car"], 1))
print(solution(["abce", "abcd", "cdx"], 2))