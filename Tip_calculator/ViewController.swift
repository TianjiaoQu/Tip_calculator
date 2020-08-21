//
//  ViewController.swift
//  Tip_calculator
//
//  Created by Tianjiao Qu on 8/17/20.
//  Copyright © 2020 TianjiaoQu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var threePeopleLabel: UILabel!
    @IBOutlet weak var twoPeopleLabel: UILabel!
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        let twoPeople = total / 2
        let threePeople = total / 3
        
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        twoPeopleLabel.text = String(format: "$%.2f", twoPeople)
        threePeopleLabel.text = String(format: "$%.2f", threePeople)
    }

}

