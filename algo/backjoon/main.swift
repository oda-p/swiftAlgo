//
//  main.swift
//  algo
//
//  Created by lee on 1/24/24.
//

import Foundation

let pay = Int(readLine()!)!

let n = Int(readLine()!)!

var money: Int = 0
for _ in 0..<n {
    let item = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
    money += item[0] * item[1]
}

print(pay == money ? "Yes" : "No")
