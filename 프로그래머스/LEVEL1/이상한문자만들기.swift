func solution(_ s: String) -> String {
    var index = 0

    return String(
        s.map { char -> Character in
            if char == " " {
                index = 0
                return " "
            } else {
                let result: Character
                if index % 2 == 0 {
                    result = Character(char.uppercased())
                } else {
                    result = Character(char.lowercased())
                }
                index += 1
                return result
            }
        }
    )
}
