import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let target = spell.sorted().joined()

    for word in dic {
        if word.map({ String($0) }).sorted().joined() == target {
            return 1
        }
    }

    return 2
}

print(solution(["p", "o", "s"], ["sod", "eocd", "qixm", "adio", "soo"]))
print(solution(["z", "d", "x"], ["def", "dww", "dzx", "loveaw"]))
print(solution(["s", "o", "m", "d"],["moos", "dzx", "smm", "sunmmo", "som"]))