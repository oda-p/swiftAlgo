//
//  main.swift
//  algo
//
//  Created by lee on 11/29/23.
//

import Foundation

var n = Int(readLine()!)!

var maps:[[String]] = []
var ret = 0
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
for _ in 0..<n {
    let str = readLine()!.map { String($0) }
    maps.append(str)
}

func checkRow(maps: [[String]]) {
    var value = 0
    for x in 0..<n {
        var target = ""
        var count = 1
        for y in 0..<n {
            if target == maps[y][x] {
                count += 1
            } else {
                target = maps[y][x]
                value = max(value, count)
                count = 1
            }
        }
        value = max(value, count)
    }
    if value > ret {
        ret = value
    }
}


func checkCol(maps: [[String]]) {
    var value = 0
    for y in 0..<n {
        var target = ""
        var count = 1
        for x in 0..<n {
            if target == maps[y][x] {
                count += 1
            } else {
                target = maps[y][x]
                value = max(value, count)
                count = 1
            }
        }
        value = max(value, count)
    }
    if value > ret {
        ret = value
    }
}

func swapCheckRow(maps: [[String]], before: Int, after: Int) {
    var value = 0
    
    var target = ""
    var count = 1
    for y in 0..<n {
        if target == maps[y][before] {
            count += 1
        } else {
            target = maps[y][before]
            value = max(value, count)
            count = 1
        }
    }
    
    target = ""
    count = 1
    
    for y in 0..<n {
        if target == maps[y][after] {
            count += 1
        } else {
            target = maps[y][after]
            value = max(value, count)
            count = 1
        }
    }
    value = max(value, count)

    if value > ret {
        ret = value
    }
}


func swapCheckCol(maps: [[String]], before: Int, after: Int) {
    var value = 0
    
    
    var target = ""
    var count = 1
    for x in 0..<n {
        if target == maps[before][x] {
            count += 1
        } else {
            target = maps[before][x]
            value = max(value, count)
            count = 1
        }
    }
    
    target = ""
    count = 1
    for x in 0..<n {
        if target == maps[after][x] {
            count += 1
        } else {
            target = maps[after][x]
            value = max(value, count)
            count = 1
        }
    }
    
    value = max(value, count)
    if value > ret {
        ret = value
    }
}

func swapMaps(maps: [[String]], target: (Int, Int), direction: (Int, Int)) -> [[String]] {
    var maps = maps
    var tmp = maps[target.0][target.1]
    
    maps[target.0][target.1] = maps[direction.0][direction.1]
    maps[direction.0][direction.1] = tmp
    
    return maps
}

let direction = [(0, -1), (0, 1), (-1, 0), (1, 0)]

for i in 0..<n {
    for j in 0..<n {
        for k in 0..<4 {
            let dy = i + direction[k].0
            let dx = j + direction[k].1
            
            if dy < 0 || dx < 0 || dy >= n || dx >= n {
                continue
            }
            var swapMap = swapMaps(maps: maps, target: (i, j), direction: (dy, dx))
            swapCheckCol(maps: swapMap, before: i, after: dy)
            swapCheckRow(maps: swapMap, before: j, after: dx)
        }
        checkCol(maps: maps)
        checkRow(maps: maps)
    }
}

print(ret)
