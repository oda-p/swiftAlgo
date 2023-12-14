//
//  main.swift
//  algo
//
//  Created by lee on 12/14/23.
//

import Foundation

let n = Int(readLine()!)
let nCard = readLine()!.components(separatedBy: " ").map { Int($0)!}.sorted()
let m = Int(readLine()!)
let mCard = readLine()!.components(separatedBy: " ").map { Int($0)!}

func binary_search(arr: [Int], target: Int, start: Int, end: Int) -> Bool {
    if start > end {
        return false
    }
    let mid = (start+end) / 2
    
    if arr[mid] == target {
        return true
    } else if arr[mid] > target {
        return binary_search(arr: arr, target: target, start: start, end: mid - 1)
    } else {
        return binary_search(arr: arr, target: target, start: mid + 1, end: end)
    }
}

var ret: [String] = []

for card in mCard {
    if binary_search(arr: nCard, target: card, start: 0, end: nCard.count - 1) {
        ret.append("1")
    } else {
        ret.append("0")
    }
}

print(ret.joined(separator: " "))
