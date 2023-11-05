//
//  main.swift
//  algo
//
//  Created by lee on 11/5/23.
//

import Foundation

func youngsik(num: Int) -> Int {
    var num = num
    var ret = 0
    while (true) {
        if num >= 30 {
            ret += 10
            num -= 30
        } else if num > 0 && num < 30 {
            ret += 10
            num -= 30
        } else if num == 0 {
            ret += 10
            num -= 30
            break
        } else {
            break
        }
    }
    return ret
}

func minsik(num: Int) -> Int {
    var num = num
    var ret = 0
    while (true) {
        if num >= 60 {
            ret += 15
            num -= 60
        } else if num > 0 && num < 60 {
            ret += 15
            num -= 60
        } else if num == 0 {
            ret += 15
            num -= 60
            break
        } else {
            break
        }
    }
    return ret
}

var roop = Int(readLine()!)!
var numbers = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var ms = 0
var ys = 0
for number in numbers {
    ms += youngsik(num: number)
    ys += minsik(num: number)
}

if ms < ys {
    print("Y \(ms)")
} else if ms == ys {
    print("Y M \(ms)")
} else {
    print("M \(ys)")
}
