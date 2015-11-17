//
//  SummationOfPrimes.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/17/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class SummationOfPrimes {
    class func answer(number: Int) -> Int {
        var simpleDel: Array<Int> = Array<Int>()
        
        for i in 2...number {
            
            var simple = true
            
            for sim in simpleDel {
                if i%sim == 0 {
                    simple = false
                    break
                }
            }
            if simple {
                simpleDel.append(i)
            }
        }
        var result = 0
        for simple in simpleDel {
            result += simple
        }
        return result
    }
}