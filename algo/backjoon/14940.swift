//
//  main.swift
//  algo
//
//  Created by lee on 11/20/23.
//

import Foundation

let n = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
let dx = [0, 0 , 1, -1]
let dy = [1, -1, 0, 0]

var maps: [[Int]] = []

var ret = Array(repeating: Array(repeating: Int.max, count: n[1]), count: n[0])

var startIndex = (0,0)
for i in 0..<n[0] {
    let nums = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }
    if let findSecond = nums.firstIndex(of: 2) {
        let index = nums.distance(from: 0, to: findSecond)
        startIndex = (i, index)
    }
    maps.append(nums)
}

func bfs(_ y: Int, _ x: Int) {
    var queue = [(Int, Int, Int)]()
    queue.append((y, x, 0))
    ret[y][x] = 0
    var index = 0
    
    while queue.count > index {
        let data = queue[index]
        let dataY = data.0
        let dataX = data.1
        let dist = data.2
        
        for i in 0..<4 {
            let ny = dataY + dy[i]
            let nx = dataX + dx[i]
            let nextDist = dist + 1
            
            if nx < 0 || ny < 0 || ny >= n[0] || nx >= n[1] || maps[ny][nx] != 1 {
                continue
            }
            
            if ret[ny][nx] > nextDist {
                ret[ny][nx] = nextDist
                queue.append((ny, nx, nextDist))
            }
        }
        index += 1
    }
}

bfs(startIndex.0, startIndex.1)

for i in 0..<n[0] {
    for j in 0..<n[1] {
        if ret[i][j] == Int.max {
            if maps[i][j] == 0 {
                print(0, terminator: " ")
            } else {
                print(-1, terminator: " ")
            }
        } else {
            print(ret[i][j], terminator: " ")
        }
    }
    print()
}
