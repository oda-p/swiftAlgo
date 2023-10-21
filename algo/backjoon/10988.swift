//
//  main.swift
//  algo
//
//  Created by lee on 10/21/23.
//

import Foundation

func isFalin(str: String) -> Bool {
    var arr = Array(str)
    
    var lastIndex: Int = arr.count - 1
    for i in 0..<arr.count / 2 {
        if lastIndex == i {
            return true
        }
        
        if arr[i] != arr[lastIndex] {
            return false
        }
        
        lastIndex -= 1
    }
    
    return true
}

var str = readLine()!

print(isFalin(str: str) ? 1 : 0)
