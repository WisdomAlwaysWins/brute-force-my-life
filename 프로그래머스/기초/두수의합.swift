import Foundation

func solution(_ a:String, _ b:String) -> String {
        let aArr = Array(a.reversed())
    let bArr = Array(b.reversed())
    
    var carry = 0
    var result: [String] = []
    
    let maxLen = max(aArr.count, bArr.count)
    
    for i in 0..<maxLen {
        let x = i < aArr.count ? Int(String(aArr[i]))! : 0
        let y = i < bArr.count ? Int(String(bArr[i]))! : 0
        
        let sum = x + y + carry
        result.append(String(sum % 10))
        carry = sum / 10
    }
    
    if carry > 0 {
        result.append(String(carry))
    }
    
    return result.reversed().joined()
}