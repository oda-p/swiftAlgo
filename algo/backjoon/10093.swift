//
//  main.swift
//  algo
//
//  Created by lee on 11/4/23.
//

import Foundation

var numbers = readLine()!.components(separatedBy: " ")

var firstNum = Int(numbers[0])!
var seceondNum = Int(numbers[1])!

if firstNum > seceondNum {
    swap(&firstNum, &seceondNum)
}
var cnt = 0
var ret = ""

if firstNum != seceondNum {
    for i in firstNum+1..<seceondNum {
        cnt += 1
        ret += "\(i) "
    }
    print(cnt)
    print(ret)
} else {
    print(cnt)
}



