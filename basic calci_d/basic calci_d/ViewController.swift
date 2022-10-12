//
//  ViewController.swift
//  basic calci_d
//
//  Created by APPLE on 08/10/22.
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
            
        {
            previousNumber = Double(calciLabel.text!)!
           
            switch sender.tag
            {
            case 11: //add
            
                calciLabel.text = "+"
            
            case 12: //sub
            
                calciLabel.text = "-"
            
            case 13: //div
           
                calciLabel.text = "/"
          
            case 14: //mul
          
                calciLabel.text = "*"
                break
            default: print("invalid")
            }
            
            performMathOp = true
        }
        
        }
   
    
    
    @IBAction func operandbtn(_ sender: UIButton)
    {
         if performMathOp == true
        {
             calciLabel.text = String(sender.tag - 1)
             numberOnScreen = Double(calciLabel.text!)!
             performMathOp = false
         }
        else
        {
            calciLabel.text = calciLabel.text! + String(sender.tag - 1)
            numberOnScreen = Double(calciLabel.text!)!
      }
    }
    
    @IBAction func clearBtn(_ sender: UIButton)
    {
                if sender.tag == 15 //clear
                {
                    calciLabel.text = ""
                    previousNumber = 0
                    numberOnScreen = 0
                    operation = 0
                }
                    
    }
    
    @IBAction func equalTo(_ sender: UIButton) {
        switch operation
        {
        case 11 : //add
            
                calciLabel.text = String(previousNumber + numberOnScreen)
                break
            
        case 12://sub
            
                calciLabel.text = String(previousNumber - numberOnScreen)
                break
            
        case 13: //div
            
                calciLabel.text = String(previousNumber / numberOnScreen)
                break
            
        case 14: //mul
            
                calciLabel.text = String(previousNumber * numberOnScreen)
                break
        default:
            calciLabel.text = String(previousNumber * numberOnScreen)
            
        } }
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

