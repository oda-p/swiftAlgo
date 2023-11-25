//
//  main.swift
//  algo
//
//  Created by lee on 11/25/23.
//

import Foundation

var nm = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }

var num = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }.sorted()

var visited = Array(repeating: false, count: nm[0])

var ret:[String] = []

var check = Set<String>()

func dfs() {
    if ret.count == nm[1] {
        let retString = ret.joined(separator: " ")
        if !check.contains(retString) {
            check.insert(retString)
            print(retString)
        }
        return
    }
    
    for i in 0..<nm[0] {
        if !visited[i] {
            visited[i] = true
            ret.append(String(num[i]))
            dfs()
            visited[i] = false
            _ = ret.popLast()
        }
    }
}

dfs()
