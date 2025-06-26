//
//  StringCalculator.swift
//  StringCalculatorTDD
//
//  Created by Rakesh on 26/06/25.
//

import Foundation

final class StringCalculator {
    
    func add(_ numbers: String) throws -> Int {
        guard !numbers.isEmpty else { return 0 }
        let numbers = numbers.replacingOccurrences(of: "\n", with: ",")
        let tokens = numbers.components(separatedBy: ",").compactMap { Int($0) }
        return tokens.reduce(0, +)
    }
    
}
