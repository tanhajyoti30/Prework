//
//  ViewController.swift
//  Prework
//
//  Created by Tanha Jyoti on 1/13/21.
//2f", total)

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountSegmentControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    var billAmount = 0.00;
    var tipPercentages = [10, 15, 20];
    override func viewDidLoad() {

        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func onchange(_ sender: Any) {
        billAmount = Double(billAmountTextField.text!) ?? 0;
        totalLabel.text = String(format: "$%.2f", billAmount*0.18 + billAmount);
    }
    @IBAction func CalculateTip(_ sender: Any) {
    
    billAmount = Double(billAmountTextField.text!) ?? 0;
        totalLabel.text = String(format: "$%.2f", (billAmount * Double(tipPercentages[tipAmountSegmentControl.selectedSegmentIndex])/100 + billAmount))
    }
}

