//
//  ViewController.swift
//  salestax_calci
//
//  Created by APPLE on 01/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceTax: UITextField!
    
    @IBOutlet weak var salesTax: UITextField!
    
    @IBOutlet weak var totalpriceTax: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func Calculate(_ sender: Any) {
        let price = Double(priceTax.text!)!

        let salestax = Double(salesTax.text!)!
        let Totalsalestax = price*salestax
        let totalPrice = price + Totalsalestax
        
        totalpriceTax.text = "$\(totalPrice)"
        
    }
    

}

