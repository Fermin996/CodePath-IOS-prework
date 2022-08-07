//
//  ViewController.swift
//  Prework
//
//  Created by Fermin on 7/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text=String(format:"%.2f", tip)
        totalLabel.text = String(format:"%.2f", total)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

