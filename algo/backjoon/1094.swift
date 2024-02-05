//
//  main.swift
//  algo
//
//  Created by lee on 2/5/24.
//

import Foundation

let target = Int(readLine()!)!

let str = String(target, radix: 2)

let c = str.filter{ $0 == "1"}.count

print(c)
