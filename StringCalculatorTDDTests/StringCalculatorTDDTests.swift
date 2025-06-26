//
//  StringCalculatorTDDTests.swift
//  StringCalculatorTDDTests
//
//  Created by Rakesh on 26/06/25.
//

import XCTest
@testable import StringCalculatorTDD

final class StringCalculatorTDDTests: XCTestCase {
    
    func testEmptyInputReturnsZero() throws {
        let calculator = StringCalculator()
        XCTAssertEqual(try calculator.add(""), 0)
    }
    
    func testSingleNumberReturnsThatNumber() throws {
        
        let calculator = StringCalculator()
        XCTAssertEqual(try calculator.add("5"), 5)
        
    }
    
    func testMultipleNumbersReturnsSum() throws {
        
        let calculator = StringCalculator()
        XCTAssertEqual(try calculator.add("1,2,3"), 6)
    }
    
    func testHandlesNewlines() throws {
        
        let calculator = StringCalculator()
        XCTAssertEqual(try calculator.add("1,2\n3"), 6)
    }
    
    func testCustomDelimiter() throws {
        
        let calculator = StringCalculator()
        XCTAssertEqual(try calculator.add("//;\n1;2"), 3)
    }
    
}
