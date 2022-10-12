//
//  ViewController.swift
//  basic calculator_d
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performMathOp = false 
    var operation = 0
    
    @IBOutlet weak var calciLabel: UILabel!
    
    @IBAction func operatorbtn(_ sender: UIButton)
    {
        
        if calciLabel.text != "" && sender.tag != 15 && sender.tag != 16
            
        {   previousNumber = Double(calciLabel.text!)!
            if sender.tag == 11 //add
            {
                calciLabel.text = "+"
            }
            else if sender.tag == 12 //sub
            {
                calciLabel.text = "-"
            }
            else if sender.tag == 13 //div
            {
                calciLabel.text = "/"
            }
            else if sender.tag == 14 //mul
            {
                calciLabel.text = "*"
            }
            operation = sender.tag
            performMathOp = true
        }
        
        }
   
    
    
    @IBAction func operandbtn(_ sender: UIButton)
    {
         if performMathOp == true
        {
             calciLabel.text = String(sender.tag-1)
             numberOnScreen = Double(calciLabel.text!)!
             performMathOp = false
         }
        else
        {
        calciLabel.text = calciLabel.text! +  String(sender.tag-1)
            numberOnScreen = Double(calciLabel.text!)!
      }
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        if sender.tag == 15 //clear
                {
                    calciLabel.text = ""
                    previousNumber = 0
                    numberOnScreen = 0
                    operation = 0
                }
                    
    }
    
    @IBAction func equalTo(_ sender: UIButton) {
        
            if operation == 11 //add
            {
                calciLabel.text = String(previousNumber + numberOnScreen)
                
            }
            else if operation == 12//sub
            {
                calciLabel.text = String(previousNumber - numberOnScreen)
                
            }
            else if operation == 13 //div
            {
                calciLabel.text = String(previousNumber / numberOnScreen)
                
            }
            else if operation == 14 //mul
            {
                calciLabel.text = String(previousNumber * numberOnScreen)
                
            }
        }
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


