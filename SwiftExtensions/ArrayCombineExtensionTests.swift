//
//  ArrayCombineExtensionTests.swift
//  SwiftExtensions
//
//  Created by Daniel Love on 24/10/2014.
//  Copyright (c) 2014 Daniel Love. All rights reserved.
//

import Foundation
import XCTest

class ArrayCombineExtensionTests: XCTestCase
{
    func testArraysDontCombine()
    {
        var arrayOne:[Float] = [0, 1]
        
        XCTAssertTrue(arrayOne.first! == 0.0, "First value should be 0, was \(arrayOne.first!)")
        XCTAssertTrue(arrayOne.last! == 1.0, "Last value should be 1, was \(arrayOne.last!)")
        
        var arrayTwo:[Float] = [2, 6]
        
        XCTAssertTrue(arrayTwo.first! == 2.0, "First value should be 2, was \(arrayTwo.first!)")
        XCTAssertTrue(arrayTwo.last! == 6.0, "Last value should be 6, was \(arrayTwo.last!)")
    }
    
    func testArraysCombine()
    {
        var arrayOne:[Float] = [0, 1]
        
        XCTAssertTrue(arrayOne.first! == 0.0, "First value should be 0, was \(arrayOne.first!)")
        XCTAssertTrue(arrayOne.last! == 1.0, "Last value should be 1, was \(arrayOne.last!)")
        
        var arrayTwo:[Float] = [2, 6]
        
        XCTAssertTrue(arrayTwo.first! == 2.0, "First value should be 2, was \(arrayTwo.first!)")
        XCTAssertTrue(arrayTwo.last! == 6.0, "Last value should be 6, was \(arrayTwo.last!)")
        
        var combinedArray = arrayOne.combineValues(arrayTwo)
        
        XCTAssertTrue(combinedArray.first! == 2.0, "First value should be 2, was \(combinedArray.first!)")
        XCTAssertTrue(combinedArray.last! == 7.0, "Last value should be 7, was \(combinedArray.last!)")
    }
    
    func testDifferentLengthArraysCombine()
    {
        var arrayOne:[Float] = [0, 1]
        
        XCTAssertTrue(arrayOne.first! == 0.0, "First value should be 0, was \(arrayOne.first!)")
        XCTAssertTrue(arrayOne.last! == 1.0, "Last value should be 1, was \(arrayOne.last!)")
        
        var arrayTwo:[Float] = [2, 6, 5]
        
        XCTAssertTrue(arrayTwo.first! == 2.0, "First value should be 2, was \(arrayTwo.first!)")
        XCTAssertTrue(arrayTwo.last! == 5.0, "Last value should be 5, was \(arrayTwo.last!)")
        
        var combinedArray = arrayOne.combineValues(arrayTwo)
        
        XCTAssertTrue(combinedArray.first! == 2.0, "First value should be 2, was \(combinedArray.first!)")
        XCTAssertTrue(combinedArray[1] == 7.0, "Second value should be 7, was \(combinedArray[1])")
        XCTAssertTrue(combinedArray.last! == 5.0, "Last value should be 5, was \(combinedArray.last!)")
    }
    
    func testCombineWithOffset()
    {
        var arrayOne:[Float] = [0, 1, 2, 3]
        var arrayTwo:[Float] = [2, 6, 5, 1]
        
        var combinedArray = arrayOne.combineValues(arrayTwo, offset: 2)
        
        XCTAssertTrue(combinedArray.count == 6, "There should be 6 items  \(combinedArray.count)")
        XCTAssertTrue(combinedArray.first! == 0.0, "First value should be 0, was \(combinedArray.first!)")
        XCTAssertTrue(combinedArray[1] == 1.0, "Second value should be 1, was \(combinedArray[1])")
        XCTAssertTrue(combinedArray[2] == 4.0, "Third value should be 4, was \(combinedArray[2])")
        XCTAssertTrue(combinedArray[3] == 9.0, "Fourth value should be 9, was \(combinedArray[3])")
        XCTAssertTrue(combinedArray.last! == 1.0, "Last value should be 1, was \(combinedArray.last!)")
    }
}
