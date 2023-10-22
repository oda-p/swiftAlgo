//
//  main.swift
//  algo
//
//  Created by lee on 10/22/23.
//

import Foundation

var strList:[String] = []

for _ in 0..<5 {
    let arr = readLine()!
    strList.append(arr)
}
var ret:String = ""
// 단어
for i in 0..<15 {
    // 줄
    for str in strList {
        if str.count - 1 < i {
            continue
        }
        let char = str.index(str.startIndex, offsetBy: i)
        ret.append(str[char])
    }
}

print(ret)
