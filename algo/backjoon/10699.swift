//
//  main.swift
//  algo
//
//  Created by lee on 1/28/24.
//

import Foundation

let fommater = DateFormatter()
fommater.dateFormat = "yyyy-MM-dd"

let dateString = fommater.string(from: Date())

print(dateString)
