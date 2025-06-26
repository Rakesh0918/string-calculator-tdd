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
        
        var delimiter = ","
        var input = numbers
        
        if numbers.hasPrefix("//") {
            let parts = numbers.components(separatedBy: "\n")
            if let delimiterPart = parts.first?.dropFirst(2) {
                delimiter = String(delimiterPart)
                input = parts.dropFirst().joined(separator: "\n")
            }
        }
        
        let components = input
            .replacingOccurrences(of: "\n", with: delimiter)
            .components(separatedBy: delimiter)
        
        let ints = components.compactMap { Int($0) }
        
        return ints.reduce(0, +)
    }
    
}
