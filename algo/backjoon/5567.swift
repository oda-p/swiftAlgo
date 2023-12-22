//
//  main.swift
//  algo
//
//  Created by lee on 12/18/23.
//

import Foundation

let n = Int(readLine()!)!

let m = Int(readLine()!)!

var arr = Array(repeating: [Int](), count: n + 1)

for i in 0..<m {
    let node = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
    arr[node[0]].append(node[1])
    arr[node[1]].append(node[0])
    
}

func bfs() {
    var queue:[(Int, Int)] = []
    var index = 0
    var check = Array(repeating: false, count: n + 1)
    var cnt = 0
    queue.append((1, 0))
    check[1] = true
    
    while queue.count > index {
        let item = queue[index]
        if item.1 > 1 {
            break
        }
        
        for i in arr[item.0] {
            if check[i] { continue}
            queue.append((i, item.1 + 1))
            check[i] = true
            cnt += 1
        }
        index += 1
    }
    print(cnt)
}

bfs()

