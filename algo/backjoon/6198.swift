//
//  main.swift
//  algo
//
//  Created by lee on 11/15/23.
//

import Foundation

let num = Int(readLine()!)!

var tower: [Int] = []
var stack:[Int] = []

for _ in 0..<num {
    tower.append(Int(readLine()!)!)
}

var ret = 0

for i in 0..<num {
    while !stack.isEmpty && stack.last! <= tower[i] {
        stack.popLast()
    }
    stack.append(tower[i])
    ret += stack.count - 1
}

print(ret)
