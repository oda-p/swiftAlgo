//
//  main.swift
//  algo
//
//  Created by lee on 11/1/23.
//

import Foundation

var numArr: [Int] = []

for _ in 0..<9 {
    let num = Int(readLine()!)!
    numArr.append(num)
}

numArr.sort(by: <)
let numSum = numArr.reduce(0, +)
var a = 0
var b = 0
for i in 0..<numArr.count {
    for j in i+1..<numArr.count {
        let numA = numArr[i]
        let numB = numArr[j]
        if numSum - numA - numB == 100 {
            a = i
            b = j
            break;
        }
    }
}

numArr.remove(at: b)
numArr.remove(at: a)

for num in numArr {
    print(num)
}
