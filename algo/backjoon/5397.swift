//
//  main.swift
//  algo
//
//  Created by lee on 11/12/23.
//

import Foundation

var num = Int(readLine()!)!

for _ in 0..<num {
    var left = [Character]()
    var right = [Character]()
    
    let input = readLine()!
    
    for i in input {
        if i == "<" {
            if !left.isEmpty { right.append(left.removeLast())}
        } else if i == ">" {
            if !right.isEmpty { left.append(right.removeLast())}
        } else if i == "-" {
            if !left.isEmpty { left.removeLast()}
        } else {
            left.append(i)
        }
    }
    print(String(left + right.reversed()))
}
