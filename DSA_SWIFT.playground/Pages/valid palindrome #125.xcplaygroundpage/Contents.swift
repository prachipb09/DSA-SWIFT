//: [Previous](@previous)
// video tutorial link: https://youtu.be/4ielqW8Kq5o
// Probem link: https://leetcode.com/problems/valid-palindrome/description/

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var left = s.startIndex
        var right = s.index(before: s.endIndex)
        
        while left < right {
            while left < right && !s[left].isLetter && !s[left].isNumber {
                left = s.index(after:left)
            }
            while left < right && !s[right].isLetter && !s[right].isNumber {
                right = s.index(before:right)
            }
            if left < right && s[left].lowercased() != s[right].lowercased() {
                return false
            }
            if left < right {
                left = s.index(after:left)
                right = s.index(before:right)
            }
        }
        return true
    }
}

print(Solution().isPalindrome("A man, a plan, a canal: Panama"))
//: [Next](@next)
