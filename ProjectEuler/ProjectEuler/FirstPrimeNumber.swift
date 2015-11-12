//
//  FirstPrimeNumber.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/12/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class FirstPrimeNumber {
    class func answer(number: Int) -> IntMax {
        var primes: Array<IntMax> = Array<IntMax>()
        primes.append(2)
        var integer: IntMax = 3
        var enough = false
        while !enough {
            var check = true
            for prime in primes {
                if integer%prime == 0 {
                    check = false
                    break
                }   
            }
            if check {
                primes.append(integer)
                if primes.count == number {
                    enough = true
                }
            }
            integer++
        }
        return primes.last!
    }
}
