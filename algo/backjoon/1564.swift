//
//  main.swift
//  algo
//
//  Created by lee on 11/2/23.
//

import Foundation

var num = Double(readLine()!)!

var sum = 1
for i in (1...Int(num)).reversed() {
    sum *= i
    
    while sum % 10 == 0 {
        sum /= 10
    }
    sum %= 1000000000000
}

var numStr = String(sum)

while true {
    if let lastNum = numStr.last, lastNum != "0" {
        break
    }
    
    numStr.popLast()
}

print(numStr.suffix(5))
