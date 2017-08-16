//
//  ViewController.swift
//  calculator
//
//  Created by Emma on 07/08/2017.
//  Copyright © 2017 Emma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblDisplay: UILabel!
    
    var userIsInTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userIsInTyping {
            
            lblDisplay.text = lblDisplay.text! + digit
        }else{
            
            lblDisplay.text = digit
            userIsInTyping = true
        }
    }
    
    var displayValue: Double{
        get {
            return Double(lblDisplay.text!)!
        }
        set {
            lblDisplay.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction func touchSymbols(_ sender: UIButton) {
        if userIsInTyping{
            brain.setOperand(displayValue)
            userIsInTyping = false
        }
        if let mathematicalSymbol = sender.currentTitle{
            brain.performOperation(mathematicalSymbol)
        }
        if let result = brain.result{
            displayValue = result
        }
    }
}

