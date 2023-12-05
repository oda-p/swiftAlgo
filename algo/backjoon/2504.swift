//
//  main.swift
//  algo
//
//  Created by lee on 12/5/23.
//

import Foundation

var str = readLine()!.map{ String($0) }

var ret = 0
var stack:[String] = []
var index = 0

var left1 = str.filter { $0 == "["}.count
var right1 = str.filter { $0 == "]"}.count
var left2 = str.filter { $0 == "("}.count
var right2 = str.filter { $0 == ")"}.count

if left1 != right1 || left2 != right2 {
    print(0)
    exit(0)
}

for char in str {
    index += 1
    if char == "(" || char == "[" {
        stack.append(char)
    } else if char == ")" {
        var tmp = 0
        guard !stack.isEmpty else {
            print(0)
            exit(0)
            break
        }
        
        while !stack.isEmpty {
            let item = stack.popLast()!
            if item == "(" {
                stack.append(tmp == 0 ? "2" : "\(2 * tmp)")
                break
            } else if item == "[" {
                print(0)
                exit(0)
                break
            } else {
                tmp += Int(item)!
            }
        }
    } else if char == "]" {
        var tmp = 0
        guard !stack.isEmpty else {
            print(0)
            exit(0)
            break
        }
        
        while !stack.isEmpty {
            let item = stack.popLast()!
            if item == "[" {
                stack.append(tmp == 0 ? "3" : "\(3 * tmp)")
                break
            } else if item == "(" {
                print(0)
                exit(0)
                break
            } else {
                tmp += Int(item)!
            }
        }
    }
}

for str in stack {
    guard let num = Int(str) else {
        print(0)
        exit(0)
    }
    ret += num
}

print(ret)
