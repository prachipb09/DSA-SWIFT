//: [Previous](@previous)
// video tutorial link: https://youtu.be/OsgqAfDJ86o
// Probem link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
import Foundation

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxPro = -1
        var minDay: Int = 0
        for i in 0..<prices.count {
            if prices[i] < prices[minDay] {
                minDay = i
            }
            maxPro = max(maxPro, (prices[i] - prices[minDay]))
        }
        return maxPro
    }
}

print(Solution().maxProfit([7,1,5,3,6,4]))

//: [Next](@next)
