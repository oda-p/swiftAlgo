//
//  main.swift
//  algo
//
//  Created by lee on 12/22/23.
//

import Foundation

var n = Int(readLine()!)!

var paper = Array(repeating: Array(repeating: false, count: 101), count: 101)

for i in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]
    
    for y in y..<y+10 {
        for x in x..<x+10 {
            paper[y][x] = true
        }
    }
}

print(paper.flatMap{ $0 }.filter{ $0 }.count )
