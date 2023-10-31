//
//  main.swift
//  algo
//
//  Created by lee on 10/31/23.
//

import Foundation

var odd: [Int] = []

for _ in 0..<7 {
    let num = Int(readLine()!)!
    
    if num % 2 != 0 {
        odd.append(num)
    }
}

if odd.count == 0 {
    print(-1)
} else {
    print(odd.reduce(0, +))
    odd.sort(by: <)
    print(odd.first!)
}
