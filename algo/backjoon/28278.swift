//
//  main.swift
//  algo
//
//  Created by lee on 1/8/24.
//

import Foundation

let n = Int(readLine()!)!

var stack: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let com = input.first!
    
    switch com {
    case 1:
        let x = input.last!
        stack.append(x)
    case 2:
        print(stack.popLast() ?? -1 )
    case 3:
        print(stack.count)
    case 4:
        print(stack.isEmpty ? 1 : 0)
    case 5:
        print(stack.last ?? -1)
    default: fatalError()
    }
}
