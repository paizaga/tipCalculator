//
//  ViewController.swift
//  Prework
//
//  Created by Phillip Aizaga on 7/17/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var customTip: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //get bill amt from txt field
        
        let bill = Double (billAmountTextField.text!) ?? 0
        
        let custom = Double (customTip.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20, custom/100]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
       // if tipSlider.value > 0 {
         //   let tipPercentage = Double(tipSlider.value)
           // total = bill + (bill * tipPercentage)
        //}
        tipAmountLabel.text = String (format: "$%.2f", tip)
        totalLabel.text = String (format: "$%.2f", total)
    }
    

}

