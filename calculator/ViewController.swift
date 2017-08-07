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
    
    @IBAction func touchSymbols(_ sender: UIButton) {
        userIsInTyping = false
        switch sender.currentTitle! {
        case "π":
            displayValue = Double.pi
            case "√":
            displayValue = sqrt(displayValue)
        default:
            break
        }
    }
}

