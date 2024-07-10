//: [Previous](@previous)
// video tutorial link: https://youtu.be/UQCbatRsUjk
// Probem link: https://leetcode.com/problems/crawler-log-folder/description/
import Foundation

class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var answer = 0
        for value in logs {
            if value == "../" {
                if answer > 0 {
                    answer -= 1
                }
            } else if value == "./" {
                continue
            } else {
                answer += 1
            }
        }
        return answer
    }
}

print(Solution().minOperations(["d1/","d2/","./","d3/","../","d31/"]))
//: [Next](@next)
