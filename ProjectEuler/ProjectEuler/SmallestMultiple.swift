//
//  SmallestMultiple.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/10/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class SmallestMultiple {
    class func answer(number: Int) -> Int {
        
        var numbers: Array<Int> = Array<Int>()
        numbers.append(2)
        
        for i in 3...number {
            
            var simpleDel: Array<Int> = Array<Int>()
            
            for j in 2...i-1 {
                
                var simple = true
                
                for sim in simpleDel {
                    if j%sim == 0 {
                        simple = false
                    }
                }
                if simple && i%j == 0 {
                    simpleDel.append(j)
                }
            }
            
            
            if simpleDel.count == 1 {
                var mult = 1
                while mult < i {
                    if let index = numbers.indexOf(simpleDel[0] * mult) {
                        numbers.removeAtIndex(index)
                    }
                    mult++
                }

                numbers.append(i)
            } else if simpleDel.count == 0 {
                numbers.append(i)
            }
            
            
        }
        
        var result = 1
        for num in numbers{
            result *= num
        }
        return result
    }
}
