//
//  27866.swift
//  algo
//
//  Created by lee on 11/17/23.
//

import Foundation

let str = readLine()!
let num = Int(readLine()!)!

let index = str.index(str.startIndex, offsetBy: num - 1)

print(str[index])
