//
//  main.swift
//  algo
//
//  Created by lee on 11/14/23.
//

import Foundation

var num = Int(readLine()!)!

var numbers = readLine()!.components(separatedBy: " ").map { Int($0)! }

var stack: [Int] = []
var ret = Array(repeating: 0, count: num)

for i in (0..<num).reversed() {
    while !stack.isEmpty && numbers[i] > numbers[stack.last!] {
        let index = stack.popLast()!
        ret[index] = i + 1
    }
    stack.append(i)
}


print(ret.map{ String($0)}.joined(separator: " "))
