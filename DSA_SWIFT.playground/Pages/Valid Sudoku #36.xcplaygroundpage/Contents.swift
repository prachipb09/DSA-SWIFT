//: [Previous](@previous)
//video link: https://youtu.be/LIKRBfDoVA8
//problem link: https://leetcode.com/problems/valid-sudoku/description/

import Foundation

class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var seen = Set<String>()
        for i in 0..<9 {
            for j in 0..<9 {
                let currVal = board[i][j]
                if currVal == "." {
                    continue
                }
                let row = "\(currVal) found in row \(i)"
                let col = "\(currVal) found in col \(j)"
                let box = "\(currVal) found in box \((i/3)*3) + \((j/3))"
                if seen.contains(row) {
                    return false
                } else {
                    seen.insert(row)
                }
                if seen.contains(col) {
                    return false
                } else {
                    seen.insert(col)
                }
                if seen.contains(box) {
                    return false
                } else {
                    seen.insert(box)
                }
            }
        }
        return true
    }
}

print(Solution().isValidSudoku([["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]]))
//: [Next](@next)
