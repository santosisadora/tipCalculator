//
//  ViewController.swift
//  Isadora-Santos_COMPR2125-Sec001_Lab03_ex2
//
//  Created by user202443 on 11/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountSlider: UISlider!
    
    @IBOutlet weak var tipChosenPercentage: UILabel!
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        tipAmountLabel.text = String(Int(tipAmountSlider.value))
        
        tipChosenPercentage.text = String(Int(tipAmountSlider.value))+"%"
        
        calculate()
    }
    
    
    @IBAction func billValueChanged(_ sender: Any) {
        calculate()
    }
    
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    @IBOutlet weak var tip15: UITextView!
    
    @IBOutlet weak var totalTip15: UITextView!
    
    @IBOutlet weak var tipCustom: UITextView!
    
    
    @IBOutlet weak var totalTipCustom: UITextView!
    
    func calculate(){
        let amount = (billAmountTextField.text! as NSString).doubleValue
        let tipPercentage = tipAmountSlider.value
        
        let tipValue = amount * Double(tipPercentage) / 100
        
        let totalValue = amount + tipValue
        
        tipCustom.text = "\(Int(tipValue))"
        
        totalTipCustom.text = "\(Int(totalValue))"
        
        
        
        let tipValue15 = amount * 15 / 100
        let totalValue15 = amount + tipValue15
        
        tip15.text = "\(Int(tipValue15))"
        totalTip15.text = "\(Int(totalValue15))"
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.keyboardType = UIKeyboardType.numberPad
    }


}

