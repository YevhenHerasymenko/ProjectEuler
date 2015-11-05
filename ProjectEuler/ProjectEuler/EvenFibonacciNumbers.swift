//
//  EvenFibonacciNumbers.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/5/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class EvenFibonacciNumbers {
    class func answer() -> Int {
        var sum = 0
        var fibonacci = 1
        var preFibonacci = 1
        var temp = 0
        while fibonacci < 4000000 {
            temp = fibonacci
            fibonacci = temp + preFibonacci
            preFibonacci = temp
            if fibonacci%2 == 0 {
                sum+=fibonacci
            }
        }
        return sum
    }
}
