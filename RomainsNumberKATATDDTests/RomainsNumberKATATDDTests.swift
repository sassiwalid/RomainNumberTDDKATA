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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOneRomain_Should_Return_One_In_Arabic(){
        let result = sut.convertToArabic("I")
        
        //then
        XCTAssertEqual(result, 1, "One romain is not equal to 1")
    }
    func testfiveRomain_Should_Return_five_In_Arabic(){
        
        let result = sut.convertToArabic("V")
        
        //then
        XCTAssertEqual(result, 5, "One romain is not equal to 5")
    }
    func testtenRomain_Should_Return_ten_In_Arabic(){
        
        let result = sut.convertToArabic("X")
        
        //then
        XCTAssertEqual(result, 10, "One romain is not equal to 10")
    }
    func testFiftyRomain_Should_Return_Fifty_In_Arabic(){
        
        let result = sut.convertToArabic("L")
        
        //then
        XCTAssertEqual(result, 50, "One romain is not equal to 50")
    }
    func testHundredRomain_Should_Return_hundred_In_Arabic(){
        
        let result = sut.convertToArabic("C")
        
        //then
        XCTAssertEqual(result, 100, "One romain is not equal to 100")
    }
    func testFiveHundredRomain_Should_Return_Fivehundred_In_Arabic(){
        
        let result = sut.convertToArabic("D")
        
        //then
        XCTAssertEqual(result, 500, "One romain is not equal to 500")
    }
    func testThousandRomain_Should_Return_Thousand_In_Arabic(){
        
        let result = sut.convertToArabic("M")
        
        //then
        XCTAssertEqual(result, 1000, "One romain is not equal to 1000")
    }
    
    func testEmptyRomainNumberShould_Return_Zero_In_Arabic(){
        let result = sut.convertToArabic("")
        //then
        XCTAssertEqual(result, 0, "Empty Romain should return ZERO")
    }
    
    

}
