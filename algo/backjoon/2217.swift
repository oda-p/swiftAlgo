//
//  main.swift
//  algo
//
//  Created by lee on 1/23/24.
//

import Foundation

let n = Int(readLine()!)!

var ropes: [Int] = []

for _ in 0..<n {
    ropes.append(Int(readLine()!)!)
}

ropes = ropes.sorted()

let strongRopes = ropes.last!
var ret = 0

for (index, weakRope) in ropes.enumerated() {
    if weakRope * (n - index) > ret {
        ret = weakRope * (n - index)
    }
}

if ret > strongRopes {
    print(ret)
} else {
    print(strongRopes)
}
