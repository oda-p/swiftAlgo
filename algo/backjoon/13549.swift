//
//  main.swift
//  algo
//
//  Created by lee on 11/26/23.
//

import Foundation

let nums = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
let n = nums[0]
let k = nums[1]

var visited = Array(repeating: false, count: 100001)

func bfs() {
    var queue: [(Int, Int)] = []
    var index = 0
    queue.append((n, 0))
    visited[n] = true
    
    while queue.count > index {
        let item = queue[index]
        
        if item.0 == k {
            print(item.1)
            break
        }
        
        if item.0 * 2 < 100001 && !visited[item.0 * 2] {
            visited[item.0 * 2] = true
            queue.append((item.0 * 2, item.1))
        }
        
        if item.0 - 1 >= 0 && !visited[item.0 - 1] {
            visited[item.0 - 1] = true
            queue.append((item.0 - 1, item.1 + 1))
        }
        
        if item.0 + 1 < 100001 && !visited[item.0 + 1] {
            visited[item.0 + 1] = true
            queue.append((item.0 + 1, item.1 + 1))
        }
        
        index += 1
    }
}

bfs()
