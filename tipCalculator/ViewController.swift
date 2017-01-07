//
//  ViewController.swift
//  tipCalculator
//
//  Created by Kevin Alfonso on 12/21/16.
//  Copyright © 2016 Kevin Alfonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var split2Label: UILabel!
    @IBOutlet weak var split3Label: UILabel!
    @IBOutlet weak var split4Label: UILabel!
    @IBOutlet weak var split5Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let split2 = total/2.0
        let split3 = total/3.0
        let split4 = total/4.0
        let split5 = total/5.0
        
        split2Label.text = String(format: "$%.2f", split2)
        split3Label.text = String(format: "$%.2f", split3)
        split4Label.text = String(format: "$%.2f", split4)
        split5Label.text = String(format: "$%.2f", split5)
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

