//
//  CalculatorBrain.swift
//  calculator
//
//  Created by Kingo on 2017/8/16.
//  Copyright © 2017年 Emma. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    private var accumulator: Double?
    
    private enum Operation{
        case constant
        case unaryOperation
    }
    
    private var operations: Dictionary<String, Operation> = [
        "π" : Operation.constant, //Double.pi,
        "e" : Operation.constant, //M_E
        "√" : Operation.unaryOperation, //sqrt
        "cos" : Operation.unaryOperation, //cos
    ]
    
    mutating func performOperation(_ symbol: String){
        if let constant = operations[symbol]{
            
        }
    }
    
    mutating func setOperand(_ operand: Double){
        accumulator = operand
    }
    
    var result: Double?{
        get{
            return accumulator
        }
    }
}
