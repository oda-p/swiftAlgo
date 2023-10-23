//
//  main.swift
//  algo
//
//  Created by lee on 10/23/23.
//

import Foundation

let arr = readLine()!.components(separatedBy: " ")

let num = Int(arr[0])!
let radix = Int(arr[1])!
let ret: String = String(num, radix : radix)

print(ret.uppercased())
