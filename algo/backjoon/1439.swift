//
//  main.swift
//  algo
//
//  Created by lee on 12/25/23.
//

import Foundation

var n = readLine()!

var zero = n.split(separator: "0").count
var one = n.split(separator: "1").count

print(min(zero,one))
