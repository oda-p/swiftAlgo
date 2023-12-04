//
//  main.swift
//  algo
//
//  Created by lee on 12/4/23.
//

import Foundation

let nmk = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
let n = nmk[0] // y
let m = nmk[1] // x
let k = nmk[2]

var maps = Array(repeating: Array(repeating: 0, count: m), count: n)
var ans = 0
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]
for _ in 0..<k {
    let point = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    let pointY = point[0] - 1
    let pointX = point[1] - 1
    maps[pointY][pointX] = 1
}

func bfs(y: Int, x: Int) {
    var queue: [(Int,Int)] = []
    var index = 0
    var cnt = 1
    maps[y][x] = 0
    queue.append((y,x))
    while queue.count > index {
        let item = queue[index]
        let y = item.0
        let x = item.1
        
        for i in 0..<4 {
            let dy = y + dy[i]
            let dx = x + dx[i]
            
            if dy < 0 || dx < 0 || dx >= m || dy >= n {
                continue
            }
            
            if maps[dy][dx] == 1 {
                queue.append((dy,dx))
                maps[dy][dx] = 0
                cnt += 1
            }
        }
        index += 1
    }
    ans = max(ans, cnt)
}

for i in 0..<n {
    for j in 0..<m {
        if maps[i][j] == 1 {
            bfs(y: i, x: j)
        }
    }
}

print(ans)
