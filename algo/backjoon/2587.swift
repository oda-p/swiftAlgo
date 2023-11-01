//
//  main.swift
//  algo
//
//  Created by lee on 11/1/23.
//

import Foundation

var numArr: [Int] = []

for _ in 0..<5 {
    var num = Int(readLine()!)!
    numArr.append(num)
}

numArr.sort(by: <)

print(numArr.reduce(0, +) / 5)
print(numArr[2])
