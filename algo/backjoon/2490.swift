//
//  main.swift
//  algo
//
//  Created by lee on 10/30/23.
//

import Foundation

for _ in 0..<3 {
    var numbers = readLine()?.components(separatedBy: " ").map{ Int($0)}
    var oneCount = numbers?.filter{ $0 == 0 }.count
    switch oneCount! {
    case 4:
        print("D")
    case 0:
        print("E")
    case 1:
        print("A")
    case 2:
        print("B")
    case 3:
        print("C")
    default:
        print("error")
    }
}
