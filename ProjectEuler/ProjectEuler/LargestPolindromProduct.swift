//
//  LargestPolindromProduct.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/9/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class LargestPolindromProduct {
    class func answer() -> Int {

        var polindromes = Array<Int>()
        for first in 100...999 {
            for second in 100...999 {
                let result = first*second
                let strI = String(result)
                if strI == String(strI.characters.reverse()) {
                    polindromes.append(result)
                }
            }
        }
        
        var maxPrime = 0
        for prime in polindromes {
            if prime > maxPrime {
                maxPrime = prime
            }
        }
        return maxPrime
    }
}