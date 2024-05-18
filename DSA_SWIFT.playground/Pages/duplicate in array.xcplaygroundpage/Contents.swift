import Foundation
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        for i in 0..<nums.count {
            if !set.contains(nums[i]) {
                set.insert(nums[i])
            } else {
                return true
            }
        }
        return false
    }
}

print(Solution().containsDuplicate([1,2,3,4,1]))
