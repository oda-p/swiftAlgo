//
//  main.swift
//  algo
//
//  Created by lee on 2/4/24.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let n = input[0], m = input[1]
var arr: Set<String> = []
var ans = 0

for _ in 0..<n {
    arr.insert(readLine()!)
}

for _ in 0..<m {
    let word = readLine()!
    ans += arr.contains(word) ? 1 : 0
}

print(ans)
