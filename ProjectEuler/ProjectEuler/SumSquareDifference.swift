//
//  SumSquareDifference.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/11/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class SumSquareDifference {
    class func answer(number: IntMax) -> IntMax {
        var sumSquare: IntMax = 0
        var squareSum: IntMax = 0
        for i in 1...number {
            sumSquare += IntMax(pow(Double(i), 2.0))
            squareSum += i
        }
        
        squareSum = IntMax(pow(Double(squareSum), 2.0))
        
        
        return squareSum - sumSquare
    }
}
