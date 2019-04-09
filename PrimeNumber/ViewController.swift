//
//  ViewController.swift
//  PrimeNumber
//
//  Created by D7703_19 on 2019. 4. 9..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit
var isPrime = true
var i = 2


class ViewController: UIViewController {
    @IBOutlet weak var txta: UITextField!
   
    @IBOutlet weak var lbla: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    
    @IBAction func btngo(_ sender: Any) {
        let number = Int(txta.text!)
        if number == 1 {
            isPrime = false
        }
        if number == 2{
            isPrime = true
        }
        
        var i = 2
        
        while i < number! {
            if number! % i == 0 {
                isPrime = false
            }
            i += 1
        }
       
        lbla.text = String(isPrime)
        isPrime = true
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // return 키를 누르면 키패드가 내려감
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txta.resignFirstResponder()
        return true
    }
    
}


