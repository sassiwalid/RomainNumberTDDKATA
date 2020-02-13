//
//  RomainNumber.swift
//  RomainsNumberKATATDD
//
//  Created by walid sassi on 2/13/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import Foundation


class RomainNumber{
    
    func convertToArabic(_ romainNumber: String) -> Int {
        var sum = 0
        for romain in romainNumber {
            sum += ArabicEquivalent(romain)
        }
        return sum
    }
    func ArabicEquivalent (_ romainDigitNumber : Character )->Int{
        switch romainDigitNumber {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }
    
}
