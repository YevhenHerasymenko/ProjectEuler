//
//  LargestPrimeNumber.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/6/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class LargestPrimeNumber {
    class func answer(number: Int) -> Int {
        var primes: Array<Int> = Array<Int>()
        var superNum = number
        while superNum > 1 {
            for i in 2...superNum {
                if superNum%i == 0 {
                    primes.append(i)
                    superNum = superNum/i
                    break
                }
            }
        }
        
        var maxPrime = 0
        for prime in primes {
            if prime > maxPrime {
                maxPrime = prime
            }
        }
        return maxPrime
    }
}