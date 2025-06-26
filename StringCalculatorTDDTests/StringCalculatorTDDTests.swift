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

    
}
