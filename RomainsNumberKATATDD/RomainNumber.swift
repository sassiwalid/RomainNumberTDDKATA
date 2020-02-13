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
        if (romainNumber.count > 0){
        var sum = ArabicEquivalent(romainNumber.first!)
        var lastRomainDigit = romainNumber.first!
        for romain in romainNumber where romain != romainNumber.first{
            if ArabicEquivalent(romain) > ArabicEquivalent(lastRomainDigit){
                sum = sum - ArabicEquivalent(lastRomainDigit) + abs(ArabicEquivalent(romain)-ArabicEquivalent(lastRomainDigit))
                
            }else{
                sum += ArabicEquivalent(romain)
            }
        lastRomainDigit = romain
        }
        return sum
        }
        return 0
    }
    private func ArabicEquivalent (_ romainDigitNumber : Character )->Int{
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
    private func checkRomainNumberValidation (_ romainNumber: String)-> Bool{
        
    }
    
}
