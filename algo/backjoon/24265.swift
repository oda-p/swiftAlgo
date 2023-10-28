//
//  main.swift
//  algo
//
//  Created by lee on 10/27/23.
//

// MenOfPassion(A[], n) {
//    sum <- 0;
//    for i <- 1 to n - 1 // n - 1
//        for j <- i + 1 to n //
//            sum <- sum + A[i] × A[j]; # 코드1
//    return sum;
// }

// n = 5
// i = 1 j = 2 3 4 5  4번
// i = 2 j = 3 4 5    3번
// i = 3 j = 4 5      2번
// i = 4 j = 5        1번

// n(n - 1) / 2

import Foundation

var num = Int(readLine()!)!

print(num * (num - 1) / 2)
print(2)
