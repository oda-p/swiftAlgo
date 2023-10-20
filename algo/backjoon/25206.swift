//
//  main.swift
//  algo
//
//  Created by lee on 10/20/23.
//

import Foundation

enum Grade: String {
    case ap = "A+"
    case a = "A0"
    case bp = "B+"
    case b = "B0"
    case cp = "C+"
    case c = "C0"
    case dp = "D+"
    case d = "D0"
    case f = "F"
    
    var number: Double {
        switch self {
        case .ap:
            return 4.5
        case .a:
            return 4.0
        case .bp:
            return 3.5
        case .b:
            return 3.0
        case .cp:
            return 2.5
        case .c:
            return 2
        case .dp:
            return 1.5
        case .d:
            return 1.0
        case .f:
            return 0.0
        }
    }
}

var grade: Double = 0
var getGrade: Double = 0
for _ in 0..<20 {
    let arr = readLine()!.components(separatedBy: " ")
    if let value = Grade(rawValue: arr[2]) {
        grade += Double(arr[1])!
        getGrade += value.number * Double(arr[1])!
    }
}

let ret = String(format: "%.6f", getGrade / grade)
print(ret == "nan" ? "0.000000" : ret)
