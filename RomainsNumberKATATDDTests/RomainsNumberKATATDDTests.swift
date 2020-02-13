//
//  RomainsNumberKATATDDTests.swift
//  RomainsNumberKATATDDTests
//
//  Created by walid sassi on 2/13/20.
//  Copyright © 2020 walid sassi. All rights reserved.
//

import XCTest
@testable import RomainsNumberKATATDD

class RomainsNumberKATATDDTests: XCTestCase {
    let sut = RomainNumber()
    func testOneRomain_Digit_Should_Return_One_In_Arabic(){
        let result = sut.convertToArabic("I")
        
        //then
        XCTAssertEqual(result, 1, "One romain is not equal to 1")
    }
    func testfiveRomain_Digit_Should_Return_five_In_Arabic(){
        
        let result = sut.convertToArabic("V")
        
        //then
        XCTAssertEqual(result, 5, "One romain is not equal to 5")
    }
    func testtenRomain_Digit_Should_Return_ten_In_Arabic(){
        
        let result = sut.convertToArabic("X")
        
        //then
        XCTAssertEqual(result, 10, "One romain is not equal to 10")
    }
    func testFiftyRomain_Digit_Should_Return_Fifty_In_Arabic(){
        
        let result = sut.convertToArabic("L")
        
        //then
        XCTAssertEqual(result, 50, "One romain is not equal to 50")
    }
    func testHundredRomain_Digit_Should_Return_hundred_In_Arabic(){
        
        let result = sut.convertToArabic("C")
        
        //then
        XCTAssertEqual(result, 100, "One romain is not equal to 100")
    }
    func testFiveHundredRomain_Digit_Should_Return_Fivehundred_In_Arabic(){
        
        let result = sut.convertToArabic("D")
        
        //then
        XCTAssertEqual(result, 500, "One romain is not equal to 500")
    }
    func testThousandRomain_Digit_Should_Return_Thousand_In_Arabic(){
        
        let result = sut.convertToArabic("M")
        
        //then
        XCTAssertEqual(result, 1000, "One romain is not equal to 1000")
    }
    
    func testEmpty_Romain_Number_Should_Return_Zero_In_Arabic(){
        let result = sut.convertToArabic("")
        //then
        XCTAssertEqual(result, 0, "Empty Romain should return ZERO")
    }
    func testNonRomain_Digit_Should_Return_Zero_In_Arabic(){
        let result = sut.convertToArabic("H")
        //then
        XCTAssertEqual(result, 0, "NO Romain number should return 0")
    }
    func testRomain_Number_should_Return_Arabic_Number(){
        let result = sut.convertToArabic("XII")
        //then
        XCTAssertNotNil(result)
        XCTAssertEqual(result, 12, "Result should be 12")
    }
    func testDIX_Romain_Should_return_509_Arabic_Number(){
        let result = sut.convertToArabic("DIX")
        //then
        XCTAssertNotNil(result)
        XCTAssertEqual(result, 509, "Result should be 509")
    }
    func testInvalid_Romain_Number_Should_return_Zero_Arabic_Number(){
        let result = sut.convertToArabic("XIIII")
        //then
        XCTAssertEqual(result, 0, "Invalid Expression should return zero")
    }
}
