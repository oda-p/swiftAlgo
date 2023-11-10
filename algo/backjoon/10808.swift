//
//  main.swift
//  algo
//
//  Created by lee on 11/10/23.
//

import Foundation

var str = Array(readLine()!)

var alphaDic: [String: Int] = [:]

for i in 0..<26 {
    let letter = String(UnicodeScalar(UInt8(97 + i)))
    alphaDic[letter] = 0
}


for char in str {
    alphaDic[String(char)]! += 1
}

var ret = ""

for i in 0..<26 {
    let letter = String(UnicodeScalar(UInt8(97 + i)))
    if i < 25 {
        ret += "\(alphaDic[letter]!) "
    } else {
        ret += "\(alphaDic[letter]!)"
    }
    
}


print(ret)
