//
//  main.swift
//  algo
//
//  Created by lee on 10/19/23.
//

import Foundation

func isPalindrome(str: String) -> Bool {
    let tmp = Array(str)
    var lastIndex = tmp.count - 1
    for i in 0..<tmp.count / 2 {
        if tmp[i] != tmp[lastIndex] {
            return false
        }
        
        if i == lastIndex {
            return true
        }
        lastIndex -= 1
    }
    return true
}

while true {
    let input = readLine()!
    if input == "0" {
        break
    }
    
    print(isPalindrome(str: input) ? "yes" : "no")
}

