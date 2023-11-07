//
//  main.swift
//  algo
//
//  Created by lee on 11/7/23.
//

import Foundation

var num = Int(readLine()!)!

for i in 0..<num {
    var str = ""
    for j in 1..<num-i {
        str += " "
    }
    for j in 0..<2*i+1 {
        str += "*"
    }
    print(str)
}
