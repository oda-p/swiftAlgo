//
//  main.swift
//  algo
//
//  Created by lee on 1/15/24.
//

import Foundation

let n = Int(readLine()!)!

var dic: [String: Bool] = [:]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    if input[1] == "enter" {
        dic[input[0]] = true
    } else {
        dic[input[0]] = nil
    }
}

dic.keys.sorted(by: >).forEach { name in
        print(name)
}
