//
//  main.swift
//  algo
//
//  Created by lee on 10/24/23.
//

import Foundation

let arr = readLine()!.components(separatedBy: " ")

var numList: [Int] = []

for num in arr {
    numList.append(Int(num)!)
}

numList.sort()

var ret: String = ""

for num in numList {
    ret += String(num) + " "
}

print(ret)
