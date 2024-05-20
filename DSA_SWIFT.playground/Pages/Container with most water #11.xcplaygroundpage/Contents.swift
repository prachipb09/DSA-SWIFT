//: [Previous](@previous)
// video tutorial link:
// Probem link: https://leetcode.com/problems/container-with-most-water/description/

import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxWater = 0
        var left = 0
        var right = height.count - 1
        while left < right {
            var area = min(height[right] , height[left]) * (right - left)
            maxWater = max(area, maxWater)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxWater
    }
}

print(Solution().maxArea([2,3,4,5,18,17,6]))
//: [Next](@next)
