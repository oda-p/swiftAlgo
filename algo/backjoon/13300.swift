//
//  main.swift
//  algo
//
//  Created by lee on 11/11/23.
//

import Foundation

var num = readLine()!.components(separatedBy: " ").map{ Int($0) }

var boyDic: [Int: Int] = [:]
var girlDic: [Int : Int] = [:]

for _ in 0..<num[0]! {
    var student = readLine()!.components(separatedBy: " ").map{ Int($0) }
    
    if student[0] == 0 {
        girlDic[student[1]!] = (girlDic[student[1]!] ?? 0) + 1
    } else {
        boyDic[student[1]!] = (boyDic[student[1]!] ?? 0) + 1
    }
}

var cnt = 0

for a in girlDic {
    var tmp = a.value
    
    while (true) {
        if tmp <= 0 {
            break
        }
        cnt += 1
        tmp -= num[1]!
    }
}

for a in boyDic {
    var tmp = a.value
    
    while (true) {
        if tmp <= 0 {
            break
        }
        cnt += 1
        tmp -= num[1]!
    }
}

print(cnt)
