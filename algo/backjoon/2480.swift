//
//  2480.swift
//  algo
//
//  Created by lee on 10/24/23.
//

import Foundation

func threeCal(num: Int) -> Int {
    return 10000 + num * 1000
}

func twoCal(num: Int) -> Int {
    return 1000 + num * 100
}

func oneCal(num: Int) -> Int {
    return num * 100
}



var num = readLine()!.components(separatedBy: " ").map{ Int($0) }

if num[0] == num[1] && num[1] == num[2] {
    print(threeCal(num: num[0] ?? 0))
}  else if num[0] == num[1] || num[0] == num[2] {
    print(twoCal(num: num[0] ?? 0))
} else if num[1] == num[2] {
    print(twoCal(num: num[1] ?? 0))
} else {
    print(oneCal(num: max(num[2]!, max(num[0]!, num[1]!))))
}
