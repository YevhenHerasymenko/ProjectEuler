//
//  SpecialPythagoreanTriplet.swift
//  ProjectEuler
//
//  Created by Yevhen Herasymenko on 11/16/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import Foundation

class SpecialPythagoreanTriplet {
    class func answer(number: Int) -> Int {
        for var i = 1; i < number; i++ {
            for var j = 1; j < number; j++ {
                for var z = 1; z < number; z++ {
                    if (!(i==j) && !(j==z) && !(i==z) && i+j+z == number) {
                        if i*i + j*j == z*z {
                            return i*j*z
                        }
                    }
                }
            }
        }
        return 0
    }
}