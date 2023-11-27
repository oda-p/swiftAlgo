//
//  main.swift
//  algo
//
//  Created by lee on 11/27/23.
//

import Foundation

let nums = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
let n = nums[0]
let m = nums[1]

var cnt = 0
var minDist = Array(repeating: INT_MAX, count: 100001)

func bfs() {
    var queue: [(Int, Int)] = []
    var index = 0
    queue.append((n, 0))
    minDist[n] = 0
    while queue.count > index {
        let item = queue[index]
        
        let x = item.0
        let dist = item.1
        
        if x == m {
            minDist[m] = Int32(dist)
            cnt += 1
        }
        
        let addDists = [x * 2, x - 1, x + 1]
        
        for addDist in addDists {
            if 0 <= addDist && addDist < 100001 && (dist + 1) <= minDist[addDist] {
                minDist[addDist] = Int32(dist + 1)
                queue.append((addDist, dist + 1))
            }
        }
        index += 1
    }
}


bfs()

print(minDist[m])
print(cnt)

