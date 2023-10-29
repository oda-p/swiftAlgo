//
//  main.swift
//  algo
//
//  Created by lee on 10/29/23.
//

// MenOfPassion(A[], n) {
//    sum <- 0;
//    for i <- 1 to n - 2
//        for j <- i + 1 to n - 1
//            for k <- j + 1 to n
//                sum <- sum + A[i] × A[j] × A[k]; # 코드1
//    return sum;
// }

import Foundation

let num = Int(readLine()!)!

print((num * (num - 1) * (num - 2)) / 6)
print(3)
