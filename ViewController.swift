//
//  ViewController.swift
//  preWork
//
//  Created by Chloe Posthuma Coelho on 7/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //bill amount
        
        //total tip amount can be given
        // by multiplying the tips by the tipPercents
        
        let tipPercents = [0.15, 0.18, 0.2]
        //the billAmount portion is assigned to variable
        //assigned to 0 if value is not valid, or if can't be converted to a number format
        let bill=Double(billAmountTextField.text!) ?? 0
       //tipControl at selected segment of index 0 is 15%, while index 1 is 18% and index 2 is 20%
        //this gives tip percentages
        let tips = bill * tipPercents[tipControl.selectedSegmentIndex]
                let total = bill + tips
                //in order to show decimal values (2 decimal points), used %.2f function
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tips)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        //the grand total is then calculated by adding bill amount with tips
     
        //
       //calculating grand total

    }
}
       

