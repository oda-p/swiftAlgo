//
//  main.swift
//  algo
//
//  Created by lee on 11/18/23.
//

import Foundation

let n = Int(readLine()!)!

if n == 0 {
    print(0)
} else {
    var nums:[Int] = []
    for _ in 0..<n {
        let num = Int(readLine()!)!
        nums.append(num)
    }

    nums.sort()

    let avg = Int(round(Double(nums.count)*0.3/2))

    //3
    //0 1 2 3
    var sum = 0
    for i in avg..<nums.count - avg {
        sum += nums[i]
    }

    print(Int(round(Double(sum) / Double(nums.count - (avg * 2) ))))
}
