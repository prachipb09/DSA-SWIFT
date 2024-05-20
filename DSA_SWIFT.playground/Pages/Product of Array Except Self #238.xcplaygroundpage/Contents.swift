//: [Previous](@previous)
// tutorial link: https://youtu.be/NGgwb8mYOkI
// problem link: https://leetcode.com/problems/product-of-array-except-self/

import Foundation

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var suffix = 1
        var product: [Int] = Array(repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            product[i] = product[i - 1] * nums[i-1]
        }
        for i in (0..<nums.count).reversed() {
            product[i] *= suffix
            suffix *= nums[i]
        }
        return product
    }
}

print(Solution().productExceptSelf([1,2,3,4]))

//: [Next](@next)
