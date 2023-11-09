//
//  main.swift
//  algo
//
//  Created by lee on 11/9/23.
//

import Foundation

let nums = Array(readLine()!)

var arr: [Int] = []
var plasticCase: [Int] = [0,0,0,0,0,0,0,0,0]
for num in nums {
    if num == "9" {
        arr.append(6)
    } else {
        arr.append(Int(String(num))!)
    }
}

for ele in arr {
    plasticCase[ele] += 1
}
if plasticCase[6] % 2 == 1 {
    plasticCase[6] = plasticCase[6] / 2 + 1
} else {
    plasticCase[6] /= 2
}


print(plasticCase.max()!)
