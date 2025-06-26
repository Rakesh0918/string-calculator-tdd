//
//  StringCalculator.swift
//  StringCalculatorTDD
//
//  Created by Rakesh on 26/06/25.
//

import Foundation

enum StringCalculatorError: Error, LocalizedError {
    case negativeNumbersNotAllowed([Int])
    var errorDescription: String? {
        switch self {
        case .negativeNumbersNotAllowed(let negatives):
            return "negative numbers not allowed: \(negatives.map(String.init).joined(separator: ","))"
        }
    }
}


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
        
        let negatives = ints.filter { $0 < 0 }
        if !negatives.isEmpty {
            throw StringCalculatorError.negativeNumbersNotAllowed(negatives)
        }
        
        return ints.reduce(0, +)
    }
    
}
