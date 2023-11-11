//
//  main.swift
//  algo
//
//  Created by lee on 11/11/23.
//

import Foundation

var num = Int(readLine()!)!

for i in 0..<num {
    let str = readLine()!.components(separatedBy: " ")
    var alphabet = Array(repeating: 0, count: 26)
    
    var flag = true
    
    for char in str[0] {
        alphabet[Int(char.asciiValue!) - 97] += 1
    }
    
    for char in str[1] {
        alphabet[Int(char.asciiValue!) - 97] -= 1
    }
    
    for a in alphabet {
        if a != 0 {
            flag = false
            break
        }
    }
    
    print(flag ? "Possible" : "Impossible")
}
