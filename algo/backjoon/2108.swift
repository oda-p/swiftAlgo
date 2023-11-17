//
//  main.swift
//  algo
//
//  Created by lee on 11/17/23.
//

import Foundation

let n = Int(readLine()!)!

var nums: [Int] = []
var numDic: [Int: Int] = [:]

for _ in 0..<n {
    let num = Int(readLine()!)!
    nums.append(num)
}


let sum = nums.reduce(0, +)
// 산술 평균
print(Int(round(Double(sum) / Double(n))))

// 중앙값
nums.sort()
print(nums[n / 2])


for num in nums {
    numDic[num] = (numDic[num] ?? 0) + 1
}
 
let maxValue = numDic.max { $0.value < $1.value }!.value
let mode = numDic.filter { $0.value == maxValue }.keys.sorted()

if mode.count > 1 {
    print("\(mode[1])")
} else {
    print("\(mode[0])")
}

print(nums.last! - nums.first!)
