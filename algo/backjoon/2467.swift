//
//  main.swift
//  algo
//
//  Created by lee on 12/7/23.
//

import Foundation

let n = Int(readLine()!)!

let nums = readLine()!.components(separatedBy: " ").map { Int($0)!}

var ret: (Int, Int) = (0, 0)
var tmp = INT_MAX
var left = 0
var right = nums.count - 1
while left < right {
    let a = nums[left]
    let b = nums[right]
    
    // 갱신
    if tmp > abs(a + b) {
        tmp = Int32(abs(a + b))
        ret = (a, b)
    }
    
    if a + b == 0 {
        break
    } else if a + b < 0 {
        left += 1
    } else if a + b > 0 {
        right -= 1
    }
}

print("\(ret.0) \(ret.1)")
