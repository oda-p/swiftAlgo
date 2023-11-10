//
//  main.swift
//  algo
//
//  Created by lee on 11/10/23.
//

import Foundation

var num = Int(readLine()!)!

var numbers = readLine()!.components(separatedBy: " ").map{ Int($0) }

var targetNum = Int(readLine()!)!

var cnt = 0

for num in numbers {
    if num == targetNum {
        cnt += 1
    }
}

print(cnt)
