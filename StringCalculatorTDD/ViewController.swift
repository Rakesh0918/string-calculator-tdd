//
//  ViewController.swift
//  StringCalculatorTDD
//
//  Created by Rakesh on 26/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var resultLabel: UILabel!
    @IBOutlet private var inputTextField: UITextField!
    
    private let calculator = StringCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Sum: 0"
        resultLabel.textColor = .systemGreen
    }

    @IBAction private func calculateTapped() {
        let input = (inputTextField.text ?? "").replacingOccurrences(of: "\\n", with: "\n")
        do {
            let result = try calculator.add(input)
            resultLabel.text = "Sum: \(result)"
            resultLabel.textColor = .systemGreen
        } catch {
            resultLabel.text = error.localizedDescription
            resultLabel.textColor = .systemRed
        }
    }

}

