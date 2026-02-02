// 직각삼격형

while let input = readLine()?.split(separator: " ").map { Int($0)! } {
    
    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    }

    let tri = input.sorted()

    if tri[2] * tri[2] == tri[1] * tri[1] + tri[0] * tri[0] {
        print("right")
    } else {
        print("wrong")
    }
}