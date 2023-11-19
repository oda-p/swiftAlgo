//
//  main.swift
//  algo
//
//  Created by lee on 11/19/23.
//

import Foundation

let n = Int(readLine()!)!
var board:[[Int]] = []
var cnt = [0,0]
for _ in 0..<n {
    let items = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(items)
}

func check(x: Int, y: Int, width: Int) -> Bool {
    for i in x..<x+width {
        for j in y..<y+width {
            if board[x][y] != board[i][j] {
                return false
            }
        }
    }
    return true
}

func confetti(x: Int, y: Int, width: Int) {
    if check(x: x, y: y, width: width) {
        cnt[board[x][y]] += 1
        return
    }
    
    let w = width / 2
    for i in 0..<2 {
        for j in 0..<2 {
            confetti(x: x + i*w, y: y+j*w, width: w)
        }
    }
}

confetti(x: 0, y: 0, width: n)

for c in cnt {
    print(c)
}
