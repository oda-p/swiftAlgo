//
//  main.swift
//  algo
//
//  Created by lee on 12/15/23.
//

import Foundation

let n = Int(readLine()!)!

let a = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)
let b = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted(by: >)

var ret = 0
for i in 0..<n {
    ret = ret + a[i] * b[i]
}

print(ret)
