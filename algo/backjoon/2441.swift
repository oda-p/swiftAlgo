//
//  main.swift
//  algo
//
//  Created by lee on 11/6/23.
//

import Foundation

let num = Int(readLine()!)!

for i in 0..<num {
    var str = ""
    for _ in 0..<i {
        str += " "
    }
    for _ in i..<num {
        str += "*"
    }
    print(str)
}
