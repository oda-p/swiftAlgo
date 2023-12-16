//
//  1312.swift
//  algo
//
//  Created by lee on 12/16/23.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
var a = input[0]
var res = 0.0
for _ in 0..<input[2]{
    a %= input[1]
    a *= 10
    res = Double(a) / Double(input[1])
}
print("\(Int(res))")
