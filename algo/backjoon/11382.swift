//
//  main.swift
//  algo
//
//  Created by lee on 11/21/23.
//

import Foundation

var nums = readLine()!.components(separatedBy: " ").map{ Int(String($0))! }

print(nums.reduce(0, +))
