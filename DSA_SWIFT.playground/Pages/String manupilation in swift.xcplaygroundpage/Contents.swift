//: [Previous](@previous)

import Foundation

//func encode(s: String, t: Int) -> String {
//    var temp = String()
//    var str = s
//    for _ in 0..<t {
//        var j = str.startIndex
//        while j < str.endIndex {
//            var ch = str[j]
//            if var asciiValue = ch.asciiValue {
//                if asciiValue == 122 {
//                    asciiValue = asciiValue - 25
//                } else {
//                    asciiValue += 1
//                }
//                if let updatedCharater = UnicodeScalar(Int(asciiValue)) {
//                    let charToString = Character(updatedCharater)
//                    temp += String(charToString)
//                }
//            }
//            j = str.index(after: j)
//        }
//        
//        str = temp
//        temp = ""
//    }
//    return str
//}
//
//encode(s: "abz", t: 2)

//    func encode(s: String, t: Int) -> String {
//        var temp = String()
//        var str = s
//        for _ in 0..<t {
//            for ch in str {
//                if var asciiValue = ch.asciiValue {
//                    if asciiValue == 122 {
//                        asciiValue = asciiValue - 25
//                    } else {
//                        asciiValue += 1
//                    }
//                    if let updatedCharater = UnicodeScalar(Int(asciiValue)) {
//                        let charToString = Character(updatedCharater)
//                        temp += String(charToString)
//                    }
//                }
//            }
//            str = temp
//            temp = ""
//        }
//        return str
//    }
//
//    encode(s: "abz", t: 2)



func isPalindrome(_ s: String) -> Bool {
    let s = s.lowercased()
    var left = s.startIndex
    var right = s.index(before: s.endIndex)
    
    while left < right {
        if s[left] != s[right] {
            return false
        }
        left = s.index(after: left)
        right = s.index(before: right)
    }
    return true
}


isPalindrome("racecar")
