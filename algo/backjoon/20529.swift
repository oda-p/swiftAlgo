//
//  main.swift
//  algo
//
//  Created by lee on 11/24/23.
//

import Foundation

let t = Int(readLine()!)!

func getDist(a: String, b: String) -> Int {
    var dist = 0
    for i in 0..<4 {
        let charA = a.index(a.startIndex, offsetBy: i)
        let charB = b.index(b.startIndex, offsetBy: i)
        if a[charA] != b[charB] {
            dist += 1
        }
    }
    return dist
}

for _ in 0..<t {
    var n = Int(readLine()!)!
    var arr = readLine()!.components(separatedBy: " ")
    
    if n > 32 {
        print(0)
        continue
    }
    
    var min_dist = 100
    for i in 0..<n-2 {
        for j in i+1..<n-1{
            for k in j+1..<n{
                min_dist = min(min_dist, getDist(a: arr[i], b: arr[j]) + getDist(a: arr[j], b: arr[k]) + getDist(a: arr[i], b: arr[k]))
            }
        }
    }
    print(min_dist)
}
