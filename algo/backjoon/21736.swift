//
//  main.swift
//  algo
//
//  Created by lee on 11/22/23.
//

import Foundation

let dy = [1, -1, 0, 0]
let dx = [0, 0, 1, -1]

let yx = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }

var maps:[[String]] = []


var cnt = 0
var ret = Array(repeating: Array(repeating: INT_MAX, count: yx[1]), count: yx[0])
var startIndex = (0,0)
for i in 0..<yx[0] {
    let nums = Array(readLine()!)
    
    var str: [String] = []
    for j in 0..<yx[1] {
        if nums[j] == "I" {
            startIndex = (i, j)
        }
        str.append(String(nums[j]))
    }
    maps.append(str)
}

func bfs(_ y: Int, _ x: Int) {
    var queue = [(y,x)]
    var index = 0
    ret[y][x] = 0
    
    while queue.count > index {
        let data = queue[index]
        
        for i in 0..<4 {
            let ny = data.0 + dy[i]
            let nx = data.1 + dx[i]
            if ny < 0 || nx < 0 || ny >= yx[0] || nx >= yx[1] || maps[ny][nx] == "X" || maps[ny][nx] == "I" {
                continue
            }
            
            if ret[ny][nx] == INT_MAX {
                ret[ny][nx] = 0
                if maps[ny][nx] == "P" {
                    cnt += 1
                }
                queue.append((ny, nx))
            }
        }
        index += 1
    }
}

bfs(startIndex.0, startIndex.1)

print(cnt == 0 ? "TT" : cnt)
